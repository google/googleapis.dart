// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.containeranalysis.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client containeranalysis/v1beta1';

/// An implementation of the Grafeas API, which stores, and enables querying and
/// retrieval of critical metadata about all of your software artifacts.
class ContaineranalysisApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  ContaineranalysisApi(http.Client client,
      {core.String rootUrl = "https://containeranalysis.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsNotesResourceApi get notes =>
      new ProjectsNotesResourceApi(_requester);
  ProjectsOccurrencesResourceApi get occurrences =>
      new ProjectsOccurrencesResourceApi(_requester);
  ProjectsScanConfigsResourceApi get scanConfigs =>
      new ProjectsScanConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsNotesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsNotesOccurrencesResourceApi get occurrences =>
      new ProjectsNotesOccurrencesResourceApi(_requester);

  ProjectsNotesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates new notes in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project in the form of `projects/[PROJECT_ID]`,
  /// under which
  /// the notes are to be created.
  /// Value must have pattern "^projects/[^/]+$".
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
      BatchCreateNotesRequest request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes:batchCreate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchCreateNotesResponse.fromJson(data));
  }

  /// Creates a new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project in the form of `projects/[PROJECT_ID]`,
  /// under which
  /// the note is to be created.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Note> create(Note request, core.String parent,
      {core.String noteId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (noteId != null) {
      _queryParams["noteId"] = [noteId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Note.fromJson(data));
  }

  /// Deletes the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
  async.Future<Note> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Note.fromJson(data));
  }

  /// Gets the access control policy for a note or an occurrence resource.
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively.
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
      GetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists notes for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project to list notes for in the form of
  /// `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [pageSize] - Number of notes to return in the list. Must be positive. Max
  /// allowed page
  /// size is 1000. If not specified, page size defaults to 20.
  ///
  /// [filter] - The filter expression.
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
  async.Future<ListNotesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListNotesResponse.fromJson(data));
  }

  /// Updates the specified note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
  async.Future<Note> patch(Note request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Note.fromJson(data));
  }

  /// Sets the access control policy on the specified note or occurrence.
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or an occurrence, respectively.
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
      SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence. Requires list permission on the project (for example,
  /// `containeranalysis.notes.list`).
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
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
      TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsNotesOccurrencesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsNotesOccurrencesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists occurrences referencing the specified note. Provider projects can
  /// use
  /// this method to get all occurrences across consumer projects referencing
  /// the
  /// specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note to list occurrences for in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern "^projects/[^/]+/notes/[^/]+$".
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [pageSize] - Number of occurrences to return in the list.
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
  async.Future<ListNoteOccurrencesResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/occurrences';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListNoteOccurrencesResponse.fromJson(data));
  }
}

class ProjectsOccurrencesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOccurrencesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates new occurrences in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project in the form of `projects/[PROJECT_ID]`,
  /// under which
  /// the occurrences are to be created.
  /// Value must have pattern "^projects/[^/]+$".
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
      BatchCreateOccurrencesRequest request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences:batchCreate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchCreateOccurrencesResponse.fromJson(data));
  }

  /// Creates a new occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project in the form of `projects/[PROJECT_ID]`,
  /// under which
  /// the occurrence is to be created.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Occurrence> create(Occurrence request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Occurrence.fromJson(data));
  }

  /// Deletes the specified occurrence. For example, use this method to delete
  /// an
  /// occurrence when the occurrence is no longer applicable for the given
  /// resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified occurrence.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
  async.Future<Occurrence> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Occurrence.fromJson(data));
  }

  /// Gets the access control policy for a note or an occurrence resource.
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively.
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
      GetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Gets the note attached to the specified occurrence. Consumer projects can
  /// use this method to get a note that belongs to a provider project.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
  async.Future<Note> getNotes(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + '/notes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Note.fromJson(data));
  }

  /// Gets a summary of the number and severity of occurrences.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project to get a vulnerability summary for in
  /// the form of
  /// `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
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
      core.String parent,
      {core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences:vulnerabilitySummary';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new VulnerabilityOccurrencesSummary.fromJson(data));
  }

  /// Lists occurrences for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project to list occurrences for in the form of
  /// `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [pageSize] - Number of occurrences to return in the list. Must be
  /// positive. Max allowed
  /// page size is 1000. If not specified, page size defaults to 20.
  ///
  /// [filter] - The filter expression.
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
  async.Future<ListOccurrencesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOccurrencesResponse.fromJson(data));
  }

  /// Updates the specified occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
  async.Future<Occurrence> patch(Occurrence request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Occurrence.fromJson(data));
  }

  /// Sets the access control policy on the specified note or occurrence.
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or an occurrence, respectively.
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
      SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence. Requires list permission on the project (for example,
  /// `containeranalysis.notes.list`).
  ///
  /// The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for
  /// notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for
  /// occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/occurrences/[^/]+$".
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
      TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsScanConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the specified scan configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ScanConfig> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanConfig.fromJson(data));
  }

  /// Lists scan configurations for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project to list scan configurations for in the
  /// form of
  /// `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [pageSize] - The number of scan configs to return in the list.
  ///
  /// [filter] - The filter expression.
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
  async.Future<ListScanConfigsResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/scanConfigs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListScanConfigsResponse.fromJson(data));
  }

  /// Updates the specified scan configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  /// Value must have pattern "^projects/[^/]+/scanConfigs/[^/]+$".
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
  async.Future<ScanConfig> update(ScanConfig request, core.String name,
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
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ScanConfig.fromJson(data));
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
  /// repo has a
  /// ref named "refs/foo/bar".
  core.String kind;

  /// The alias name.
  core.String name;

  AliasContext();

  AliasContext.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
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

  /// Related artifact names. This may be the path to a binary or jar file, or
  /// in
  /// the case of a container build, the name used to push the container image
  /// to
  /// Google Container Registry, as presented to `docker push`. Note that a
  /// single Artifact ID can have multiple names, for example if two tags are
  /// applied to one image.
  core.List<core.String> names;

  Artifact();

  Artifact.fromJson(core.Map _json) {
    if (_json.containsKey("checksum")) {
      checksum = _json["checksum"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("names")) {
      names = (_json["names"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (checksum != null) {
      _json["checksum"] = checksum;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (names != null) {
      _json["names"] = names;
    }
    return _json;
  }
}

/// Occurrence that represents a single "attestation". The authenticity of an
/// attestation can be verified using the attached signature. If the verifier
/// trusts the public key of the signer, then verifying the signature is
/// sufficient to establish trust. In this circumstance, the authority to which
/// this attestation is attached is primarily useful for look-up (how to find
/// this attestation if you already know the authority and artifact to be
/// verified) and intent (which authority was this attestation intended to sign
/// for).
class Attestation {
  GenericSignedAttestation genericSignedAttestation;

  /// A PGP signed attestation.
  PgpSignedAttestation pgpSignedAttestation;

  Attestation();

  Attestation.fromJson(core.Map _json) {
    if (_json.containsKey("genericSignedAttestation")) {
      genericSignedAttestation = new GenericSignedAttestation.fromJson(
          _json["genericSignedAttestation"]);
    }
    if (_json.containsKey("pgpSignedAttestation")) {
      pgpSignedAttestation =
          new PgpSignedAttestation.fromJson(_json["pgpSignedAttestation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (genericSignedAttestation != null) {
      _json["genericSignedAttestation"] = (genericSignedAttestation).toJson();
    }
    if (pgpSignedAttestation != null) {
      _json["pgpSignedAttestation"] = (pgpSignedAttestation).toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Note kind that represents a logical attestation "role" or "authority". For
/// example, an organization might have one `Authority` for "QA" and one for
/// "build". This note is intended to act strictly as a grouping mechanism for
/// the attached occurrences (Attestations). This grouping mechanism also
/// provides a security boundary, since IAM ACLs gate the ability for a
/// principle
/// to attach an occurrence to a given note. It also provides a single point of
/// lookup to find all attached attestation occurrences, even if they don't all
/// live in the same project.
class Authority {
  /// Hint hints at the purpose of the attestation authority.
  Hint hint;

  Authority();

  Authority.fromJson(core.Map _json) {
    if (_json.containsKey("hint")) {
      hint = new Hint.fromJson(_json["hint"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hint != null) {
      _json["hint"] = (hint).toJson();
    }
    return _json;
  }
}

/// Basis describes the base image portion (Note) of the DockerImage
/// relationship. Linked occurrences are derived from this or an
/// equivalent image via:
///   FROM <Basis.resource_url>
/// Or an equivalent reference, e.g. a tag of the resource_url.
class Basis {
  /// Required. Immutable. The fingerprint of the base image.
  Fingerprint fingerprint;

  /// Required. Immutable. The resource_url for the resource representing the
  /// basis of associated occurrence images.
  core.String resourceUrl;

  Basis();

  Basis.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = new Fingerprint.fromJson(_json["fingerprint"]);
    }
    if (_json.containsKey("resourceUrl")) {
      resourceUrl = _json["resourceUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fingerprint != null) {
      _json["fingerprint"] = (fingerprint).toJson();
    }
    if (resourceUrl != null) {
      _json["resourceUrl"] = resourceUrl;
    }
    return _json;
  }
}

/// Request to create notes in batch.
class BatchCreateNotesRequest {
  /// The notes to create. Max allowed length is 1000.
  core.Map<core.String, Note> notes;

  BatchCreateNotesRequest();

  BatchCreateNotesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("notes")) {
      notes = commons.mapMap<core.Map, Note>(
          _json["notes"].cast<core.String, core.Map>(),
          (core.Map item) => new Note.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (notes != null) {
      _json["notes"] = commons.mapMap<Note, core.Map<core.String, core.Object>>(
          notes, (Note item) => (item).toJson());
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
    if (_json.containsKey("notes")) {
      notes = (_json["notes"] as core.List)
          .map<Note>((value) => new Note.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Request to create occurrences in batch.
class BatchCreateOccurrencesRequest {
  /// The occurrences to create. Max allowed length is 1000.
  core.List<Occurrence> occurrences;

  BatchCreateOccurrencesRequest();

  BatchCreateOccurrencesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("occurrences")) {
      occurrences = (_json["occurrences"] as core.List)
          .map<Occurrence>((value) => new Occurrence.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (occurrences != null) {
      _json["occurrences"] =
          occurrences.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("occurrences")) {
      occurrences = (_json["occurrences"] as core.List)
          .map<Occurrence>((value) => new Occurrence.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (occurrences != null) {
      _json["occurrences"] =
          occurrences.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in the build details occurrence.
class Build {
  /// Required. Immutable. Version of the builder which produced this build.
  core.String builderVersion;

  /// Signature of the build in occurrences pointing to this build note
  /// containing build details.
  BuildSignature signature;

  Build();

  Build.fromJson(core.Map _json) {
    if (_json.containsKey("builderVersion")) {
      builderVersion = _json["builderVersion"];
    }
    if (_json.containsKey("signature")) {
      signature = new BuildSignature.fromJson(_json["signature"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (builderVersion != null) {
      _json["builderVersion"] = builderVersion;
    }
    if (signature != null) {
      _json["signature"] = (signature).toJson();
    }
    return _json;
  }
}

/// Provenance of a build. Contains all information needed to verify the full
/// details about the build from source to completion.
class BuildProvenance {
  /// Special options applied to this build. This is a catch-all field where
  /// build providers can enter any desired additional details.
  core.Map<core.String, core.String> buildOptions;

  /// Version string of the builder at the time this build was executed.
  core.String builderVersion;

  /// Output of the build.
  core.List<Artifact> builtArtifacts;

  /// Commands requested by the build.
  core.List<Command> commands;

  /// Time at which the build was created.
  core.String createTime;

  /// E-mail address of the user who initiated this build. Note that this was
  /// the
  /// user's e-mail address at the time the build was initiated; this address
  /// may
  /// not represent the same end-user for all time.
  core.String creator;

  /// Time at which execution of the build was finished.
  core.String endTime;

  /// Required. Unique identifier of the build.
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
    if (_json.containsKey("buildOptions")) {
      buildOptions =
          (_json["buildOptions"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("builderVersion")) {
      builderVersion = _json["builderVersion"];
    }
    if (_json.containsKey("builtArtifacts")) {
      builtArtifacts = (_json["builtArtifacts"] as core.List)
          .map<Artifact>((value) => new Artifact.fromJson(value))
          .toList();
    }
    if (_json.containsKey("commands")) {
      commands = (_json["commands"] as core.List)
          .map<Command>((value) => new Command.fromJson(value))
          .toList();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("creator")) {
      creator = _json["creator"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("logsUri")) {
      logsUri = _json["logsUri"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("sourceProvenance")) {
      sourceProvenance = new Source.fromJson(_json["sourceProvenance"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("triggerId")) {
      triggerId = _json["triggerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buildOptions != null) {
      _json["buildOptions"] = buildOptions;
    }
    if (builderVersion != null) {
      _json["builderVersion"] = builderVersion;
    }
    if (builtArtifacts != null) {
      _json["builtArtifacts"] =
          builtArtifacts.map((value) => (value).toJson()).toList();
    }
    if (commands != null) {
      _json["commands"] = commands.map((value) => (value).toJson()).toList();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (creator != null) {
      _json["creator"] = creator;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (logsUri != null) {
      _json["logsUri"] = logsUri;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (sourceProvenance != null) {
      _json["sourceProvenance"] = (sourceProvenance).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (triggerId != null) {
      _json["triggerId"] = triggerId;
    }
    return _json;
  }
}

/// Message encapsulating the signature of the verified build.
class BuildSignature {
  /// An ID for the key used to sign. This could be either an ID for the key
  /// stored in `public_key` (such as the ID or fingerprint for a PGP key, or
  /// the
  /// CN for a cert), or a reference to an external key (such as a reference to
  /// a
  /// key in Cloud Key Management Service).
  core.String keyId;

  /// The type of the key, either stored in `public_key` or referenced in
  /// `key_id`.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : `KeyType` is not set.
  /// - "PGP_ASCII_ARMORED" : `PGP ASCII Armored` public key.
  /// - "PKIX_PEM" : `PKIX PEM` public key.
  core.String keyType;

  /// Public key of the builder which can be used to verify that the related
  /// findings are valid and unchanged. If `key_type` is empty, this defaults
  /// to PEM encoded public keys.
  ///
  /// This field may be empty if `key_id` references an external key.
  ///
  /// For Cloud Build based signatures, this is a PEM encoded public
  /// key. To verify the Cloud Build signature, place the contents of
  /// this field into a file (public.pem). The signature field is base64-decoded
  /// into its binary representation in signature.bin, and the provenance bytes
  /// from `BuildDetails` are base64-decoded into a binary representation in
  /// signed.bin. OpenSSL can then verify the signature:
  /// `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  core.String publicKey;

  /// Required. Signature of the related `BuildProvenance`. In JSON, this is
  /// base-64 encoded.
  core.String signature;
  core.List<core.int> get signatureAsBytes {
    return convert.base64.decode(signature);
  }

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  BuildSignature();

  BuildSignature.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("keyType")) {
      keyType = _json["keyType"];
    }
    if (_json.containsKey("publicKey")) {
      publicKey = _json["publicKey"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (keyType != null) {
      _json["keyType"] = keyType;
    }
    if (publicKey != null) {
      _json["publicKey"] = publicKey;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/// Common Vulnerability Scoring System version 3.
/// For details, see https://www.first.org/cvss/specification-document
class CVSSv3 {
  ///
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED"
  /// - "ATTACK_COMPLEXITY_LOW"
  /// - "ATTACK_COMPLEXITY_HIGH"
  core.String attackComplexity;

  /// Base Metrics
  /// Represents the intrinsic characteristics of a vulnerability that are
  /// constant over time and across user environments.
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
    if (_json.containsKey("attackComplexity")) {
      attackComplexity = _json["attackComplexity"];
    }
    if (_json.containsKey("attackVector")) {
      attackVector = _json["attackVector"];
    }
    if (_json.containsKey("availabilityImpact")) {
      availabilityImpact = _json["availabilityImpact"];
    }
    if (_json.containsKey("baseScore")) {
      baseScore = _json["baseScore"].toDouble();
    }
    if (_json.containsKey("confidentialityImpact")) {
      confidentialityImpact = _json["confidentialityImpact"];
    }
    if (_json.containsKey("exploitabilityScore")) {
      exploitabilityScore = _json["exploitabilityScore"].toDouble();
    }
    if (_json.containsKey("impactScore")) {
      impactScore = _json["impactScore"].toDouble();
    }
    if (_json.containsKey("integrityImpact")) {
      integrityImpact = _json["integrityImpact"];
    }
    if (_json.containsKey("privilegesRequired")) {
      privilegesRequired = _json["privilegesRequired"];
    }
    if (_json.containsKey("scope")) {
      scope = _json["scope"];
    }
    if (_json.containsKey("userInteraction")) {
      userInteraction = _json["userInteraction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attackComplexity != null) {
      _json["attackComplexity"] = attackComplexity;
    }
    if (attackVector != null) {
      _json["attackVector"] = attackVector;
    }
    if (availabilityImpact != null) {
      _json["availabilityImpact"] = availabilityImpact;
    }
    if (baseScore != null) {
      _json["baseScore"] = baseScore;
    }
    if (confidentialityImpact != null) {
      _json["confidentialityImpact"] = confidentialityImpact;
    }
    if (exploitabilityScore != null) {
      _json["exploitabilityScore"] = exploitabilityScore;
    }
    if (impactScore != null) {
      _json["impactScore"] = impactScore;
    }
    if (integrityImpact != null) {
      _json["integrityImpact"] = integrityImpact;
    }
    if (privilegesRequired != null) {
      _json["privilegesRequired"] = privilegesRequired;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    if (userInteraction != null) {
      _json["userInteraction"] = userInteraction;
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
    if (_json.containsKey("aliasContext")) {
      aliasContext = new AliasContext.fromJson(_json["aliasContext"]);
    }
    if (_json.containsKey("repoId")) {
      repoId = new RepoId.fromJson(_json["repoId"]);
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliasContext != null) {
      _json["aliasContext"] = (aliasContext).toJson();
    }
    if (repoId != null) {
      _json["repoId"] = (repoId).toJson();
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
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

  /// Required. Name of the command, as presented on the command line, or if the
  /// command is packaged as a Docker container, as presented to `docker pull`.
  core.String name;

  /// The ID(s) of the command(s) that this command depends on.
  core.List<core.String> waitFor;

  Command();

  Command.fromJson(core.Map _json) {
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("dir")) {
      dir = _json["dir"];
    }
    if (_json.containsKey("env")) {
      env = (_json["env"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("waitFor")) {
      waitFor = (_json["waitFor"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (args != null) {
      _json["args"] = args;
    }
    if (dir != null) {
      _json["dir"] = dir;
    }
    if (env != null) {
      _json["env"] = env;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (waitFor != null) {
      _json["waitFor"] = waitFor;
    }
    return _json;
  }
}

/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Required. Resource URI for the artifact being deployed.
  core.List<core.String> resourceUri;

  Deployable();

  Deployable.fromJson(core.Map _json) {
    if (_json.containsKey("resourceUri")) {
      resourceUri = (_json["resourceUri"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
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

  /// Required. Beginning of the lifetime of this deployment.
  core.String deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown.
  /// - "GKE" : Google Container Engine.
  /// - "FLEX" : Google App Engine: Flexible Environment.
  /// - "CUSTOM" : Custom user-defined platform.
  core.String platform;

  /// Output only. Resource URI for the artifact being deployed taken from
  /// the deployable field with the same name.
  core.List<core.String> resourceUri;

  /// End of the lifetime of this deployment.
  core.String undeployTime;

  /// Identity of the user that triggered this deployment.
  core.String userEmail;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("config")) {
      config = _json["config"];
    }
    if (_json.containsKey("deployTime")) {
      deployTime = _json["deployTime"];
    }
    if (_json.containsKey("platform")) {
      platform = _json["platform"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = (_json["resourceUri"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("undeployTime")) {
      undeployTime = _json["undeployTime"];
    }
    if (_json.containsKey("userEmail")) {
      userEmail = _json["userEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (config != null) {
      _json["config"] = config;
    }
    if (deployTime != null) {
      _json["deployTime"] = deployTime;
    }
    if (platform != null) {
      _json["platform"] = platform;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (undeployTime != null) {
      _json["undeployTime"] = undeployTime;
    }
    if (userEmail != null) {
      _json["userEmail"] = userEmail;
    }
    return _json;
  }
}

/// Derived describes the derived image portion (Occurrence) of the DockerImage
/// relationship. This image would be produced from a Dockerfile with FROM
/// <DockerImage.Basis in attached Note>.
class Derived {
  /// Output only. This contains the base image URL for the derived image
  /// occurrence.
  core.String baseResourceUrl;

  /// Output only. The number of layers by which this image differs from the
  /// associated image basis.
  core.int distance;

  /// Required. The fingerprint of the derived image.
  Fingerprint fingerprint;

  /// This contains layer-specific metadata, if populated it has length
  /// "distance" and is ordered with [distance] being the layer immediately
  /// following the base image and [1] being the final layer.
  core.List<Layer> layerInfo;

  Derived();

  Derived.fromJson(core.Map _json) {
    if (_json.containsKey("baseResourceUrl")) {
      baseResourceUrl = _json["baseResourceUrl"];
    }
    if (_json.containsKey("distance")) {
      distance = _json["distance"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = new Fingerprint.fromJson(_json["fingerprint"]);
    }
    if (_json.containsKey("layerInfo")) {
      layerInfo = (_json["layerInfo"] as core.List)
          .map<Layer>((value) => new Layer.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (baseResourceUrl != null) {
      _json["baseResourceUrl"] = baseResourceUrl;
    }
    if (distance != null) {
      _json["distance"] = distance;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = (fingerprint).toJson();
    }
    if (layerInfo != null) {
      _json["layerInfo"] = layerInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Identifies all appearances of this vulnerability in the package for a
/// specific distro/location. For example: glibc in
/// cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class Detail {
  /// Required. The CPE URI in
  /// [cpe format](https://cpe.mitre.org/specification/) in which the
  /// vulnerability manifests. Examples include distro or storage location for
  /// vulnerable jar.
  core.String cpeUri;

  /// A vendor-specific description of this note.
  core.String description;

  /// The fix for this specific package version.
  VulnerabilityLocation fixedLocation;

  /// Whether this detail is obsolete. Occurrences are expected not to point to
  /// obsolete details.
  core.bool isObsolete;

  /// Deprecated, do not use. Use fixed_location instead.
  ///
  /// The max version of the package in which the vulnerability exists.
  Version maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  Version minAffectedVersion;

  /// Required. The name of the package where the vulnerability was found.
  core.String package;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc).
  core.String packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  core.String severityName;

  Detail();

  Detail.fromJson(core.Map _json) {
    if (_json.containsKey("cpeUri")) {
      cpeUri = _json["cpeUri"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fixedLocation")) {
      fixedLocation =
          new VulnerabilityLocation.fromJson(_json["fixedLocation"]);
    }
    if (_json.containsKey("isObsolete")) {
      isObsolete = _json["isObsolete"];
    }
    if (_json.containsKey("maxAffectedVersion")) {
      maxAffectedVersion = new Version.fromJson(_json["maxAffectedVersion"]);
    }
    if (_json.containsKey("minAffectedVersion")) {
      minAffectedVersion = new Version.fromJson(_json["minAffectedVersion"]);
    }
    if (_json.containsKey("package")) {
      package = _json["package"];
    }
    if (_json.containsKey("packageType")) {
      packageType = _json["packageType"];
    }
    if (_json.containsKey("severityName")) {
      severityName = _json["severityName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cpeUri != null) {
      _json["cpeUri"] = cpeUri;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fixedLocation != null) {
      _json["fixedLocation"] = (fixedLocation).toJson();
    }
    if (isObsolete != null) {
      _json["isObsolete"] = isObsolete;
    }
    if (maxAffectedVersion != null) {
      _json["maxAffectedVersion"] = (maxAffectedVersion).toJson();
    }
    if (minAffectedVersion != null) {
      _json["minAffectedVersion"] = (minAffectedVersion).toJson();
    }
    if (package != null) {
      _json["package"] = package;
    }
    if (packageType != null) {
      _json["packageType"] = packageType;
    }
    if (severityName != null) {
      _json["severityName"] = severityName;
    }
    return _json;
  }
}

/// Details of an attestation occurrence.
class Details {
  /// Required. Attestation for the resource.
  Attestation attestation;

  Details();

  Details.fromJson(core.Map _json) {
    if (_json.containsKey("attestation")) {
      attestation = new Attestation.fromJson(_json["attestation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attestation != null) {
      _json["attestation"] = (attestation).toJson();
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
  /// itself is in a bad
  /// state.
  /// - "FINISHED_UNSUPPORTED" : The resource is known not to be supported
  core.String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user. The LocalizedMessage is output only and
  /// populated by the API.
  Status analysisStatusError;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown.
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String continuousAnalysis;

  /// The last time continuous analysis was done for this resource.
  /// Deprecated, do not use.
  core.String lastAnalysisTime;

  Discovered();

  Discovered.fromJson(core.Map _json) {
    if (_json.containsKey("analysisStatus")) {
      analysisStatus = _json["analysisStatus"];
    }
    if (_json.containsKey("analysisStatusError")) {
      analysisStatusError = new Status.fromJson(_json["analysisStatusError"]);
    }
    if (_json.containsKey("continuousAnalysis")) {
      continuousAnalysis = _json["continuousAnalysis"];
    }
    if (_json.containsKey("lastAnalysisTime")) {
      lastAnalysisTime = _json["lastAnalysisTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analysisStatus != null) {
      _json["analysisStatus"] = analysisStatus;
    }
    if (analysisStatusError != null) {
      _json["analysisStatusError"] = (analysisStatusError).toJson();
    }
    if (continuousAnalysis != null) {
      _json["continuousAnalysis"] = continuousAnalysis;
    }
    if (lastAnalysisTime != null) {
      _json["lastAnalysisTime"] = lastAnalysisTime;
    }
    return _json;
  }
}

/// A note that indicates a type of analysis a provider would perform. This note
/// exists in a provider's project. A `Discovery` occurrence is created in a
/// consumer's project at the start of analysis.
class Discovery {
  /// Required. Immutable. The kind of analysis that is handled by this
  /// discovery.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Unknown.
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
  core.String analysisKind;

  Discovery();

  Discovery.fromJson(core.Map _json) {
    if (_json.containsKey("analysisKind")) {
      analysisKind = _json["analysisKind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analysisKind != null) {
      _json["analysisKind"] = analysisKind;
    }
    return _json;
  }
}

/// This represents a particular channel of distribution for a given package.
/// E.g., Debian's jessie-backports dpkg mirror.
class Distribution {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture.
  /// - "X86" : X86 architecture.
  /// - "X64" : X64 architecture.
  core.String architecture;

  /// Required. The cpe_uri in [CPE
  /// format](https://cpe.mitre.org/specification/)
  /// denoting the package manager version distributing a package.
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
    if (_json.containsKey("architecture")) {
      architecture = _json["architecture"];
    }
    if (_json.containsKey("cpeUri")) {
      cpeUri = _json["cpeUri"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("latestVersion")) {
      latestVersion = new Version.fromJson(_json["latestVersion"]);
    }
    if (_json.containsKey("maintainer")) {
      maintainer = _json["maintainer"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (architecture != null) {
      _json["architecture"] = architecture;
    }
    if (cpeUri != null) {
      _json["cpeUri"] = cpeUri;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (latestVersion != null) {
      _json["latestVersion"] = (latestVersion).toJson();
    }
    if (maintainer != null) {
      _json["maintainer"] = maintainer;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Container message for hashes of byte content of files, used in source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Required. Collection of file hashes.
  core.List<Hash> fileHash;

  FileHashes();

  FileHashes.fromJson(core.Map _json) {
    if (_json.containsKey("fileHash")) {
      fileHash = (_json["fileHash"] as core.List)
          .map<Hash>((value) => new Hash.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileHash != null) {
      _json["fileHash"] = fileHash.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint {
  /// Required. The layer ID of the final layer in the Docker image's v1
  /// representation.
  core.String v1Name;

  /// Required. The ordered list of v2 blobs that represent a given image.
  core.List<core.String> v2Blob;

  /// Output only. The name of the image's v2 blobs computed via:
  ///   [bottom] := v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1])
  /// Only the name of the final blob is kept.
  core.String v2Name;

  Fingerprint();

  Fingerprint.fromJson(core.Map _json) {
    if (_json.containsKey("v1Name")) {
      v1Name = _json["v1Name"];
    }
    if (_json.containsKey("v2Blob")) {
      v2Blob = (_json["v2Blob"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("v2Name")) {
      v2Name = _json["v2Name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (v1Name != null) {
      _json["v1Name"] = v1Name;
    }
    if (v2Blob != null) {
      _json["v2Blob"] = v2Blob;
    }
    if (v2Name != null) {
      _json["v2Name"] = v2Name;
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

  /// The severity for this count. SEVERITY_UNSPECIFIED indicates total across
  /// all severities.
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
    if (_json.containsKey("fixableCount")) {
      fixableCount = _json["fixableCount"];
    }
    if (_json.containsKey("resource")) {
      resource = new Resource.fromJson(_json["resource"]);
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("totalCount")) {
      totalCount = _json["totalCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fixableCount != null) {
      _json["fixableCount"] = fixableCount;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (totalCount != null) {
      _json["totalCount"] = totalCount;
    }
    return _json;
  }
}

/// An attestation wrapper that uses the Grafeas `Signature` message.
/// This attestation must define the `serialized_payload` that the `signatures`
/// verify and any metadata necessary to interpret that plaintext.  The
/// signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed.
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of
  /// that
  /// type (for example by validating a JSON schema).
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : `ContentType` is not set.
  /// - "SIMPLE_SIGNING_JSON" : Atomic format attestation signature. See
  /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
  /// The payload extracted in `plaintext` is a JSON blob conforming to the
  /// linked schema.
  core.String contentType;

  /// The serialized payload that is verified by one or more `signatures`.
  /// The encoding and semantic meaning of this payload must match what is set
  /// in
  /// `content_type`.
  core.String serializedPayload;
  core.List<core.int> get serializedPayloadAsBytes {
    return convert.base64.decode(serializedPayload);
  }

  set serializedPayloadAsBytes(core.List<core.int> _bytes) {
    serializedPayload =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// One or more signatures over `serialized_payload`.  Verifier
  /// implementations
  /// should consider this attestation message verified if at least one
  /// `signature` verifies `serialized_payload`.  See `Signature` in
  /// common.proto
  /// for more details on signature structure and verification.
  core.List<Signature> signatures;

  GenericSignedAttestation();

  GenericSignedAttestation.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("serializedPayload")) {
      serializedPayload = _json["serializedPayload"];
    }
    if (_json.containsKey("signatures")) {
      signatures = (_json["signatures"] as core.List)
          .map<Signature>((value) => new Signature.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (serializedPayload != null) {
      _json["serializedPayload"] = serializedPayload;
    }
    if (signatures != null) {
      _json["signatures"] =
          signatures.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext aliasContext;

  /// The full project name within the host. Projects may be nested, so
  /// "project/subproject" is a valid project name. The "repo name" is the
  /// hostURI/project.
  core.String gerritProject;

  /// The URI of a running Gerrit instance.
  core.String hostUri;

  /// A revision (commit) ID.
  core.String revisionId;

  GerritSourceContext();

  GerritSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("aliasContext")) {
      aliasContext = new AliasContext.fromJson(_json["aliasContext"]);
    }
    if (_json.containsKey("gerritProject")) {
      gerritProject = _json["gerritProject"];
    }
    if (_json.containsKey("hostUri")) {
      hostUri = _json["hostUri"];
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliasContext != null) {
      _json["aliasContext"] = (aliasContext).toJson();
    }
    if (gerritProject != null) {
      _json["gerritProject"] = gerritProject;
    }
    if (hostUri != null) {
      _json["hostUri"] = hostUri;
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Metadata for all operations used and required for all operations
/// that created by Container Analysis Providers
class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata {
  /// Output only. The time this operation was created.
  core.String createTime;

  /// Output only. The time that this operation was marked completed or failed.
  core.String endTime;

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    return _json;
  }
}

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetails {
  /// Required. The actual provenance for the build.
  BuildProvenance provenance;

  /// Serialized JSON representation of the provenance, used in generating the
  /// build signature in the corresponding build note. After verifying the
  /// signature, `provenance_bytes` can be unmarshalled and compared to the
  /// provenance to confirm that it is unchanged. A base64-encoded string
  /// representation of the provenance bytes is used for the signature in order
  /// to interoperate with openssl which expects this format for signature
  /// verification.
  ///
  /// The serialized form is captured both to avoid ambiguity in how the
  /// provenance is marshalled to json as well to prevent incompatibilities with
  /// future changes.
  core.String provenanceBytes;

  GrafeasV1beta1BuildDetails();

  GrafeasV1beta1BuildDetails.fromJson(core.Map _json) {
    if (_json.containsKey("provenance")) {
      provenance = new BuildProvenance.fromJson(_json["provenance"]);
    }
    if (_json.containsKey("provenanceBytes")) {
      provenanceBytes = _json["provenanceBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (provenance != null) {
      _json["provenance"] = (provenance).toJson();
    }
    if (provenanceBytes != null) {
      _json["provenanceBytes"] = provenanceBytes;
    }
    return _json;
  }
}

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Required. Deployment history for the resource.
  Deployment deployment;

  GrafeasV1beta1DeploymentDetails();

  GrafeasV1beta1DeploymentDetails.fromJson(core.Map _json) {
    if (_json.containsKey("deployment")) {
      deployment = new Deployment.fromJson(_json["deployment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployment != null) {
      _json["deployment"] = (deployment).toJson();
    }
    return _json;
  }
}

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Required. Analysis status for the discovered resource.
  Discovered discovered;

  GrafeasV1beta1DiscoveryDetails();

  GrafeasV1beta1DiscoveryDetails.fromJson(core.Map _json) {
    if (_json.containsKey("discovered")) {
      discovered = new Discovered.fromJson(_json["discovered"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (discovered != null) {
      _json["discovered"] = (discovered).toJson();
    }
    return _json;
  }
}

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// Required. Immutable. The child image derived from the base image.
  Derived derivedImage;

  GrafeasV1beta1ImageDetails();

  GrafeasV1beta1ImageDetails.fromJson(core.Map _json) {
    if (_json.containsKey("derivedImage")) {
      derivedImage = new Derived.fromJson(_json["derivedImage"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (derivedImage != null) {
      _json["derivedImage"] = (derivedImage).toJson();
    }
    return _json;
  }
}

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Required. Where the package was installed.
  Installation installation;

  GrafeasV1beta1PackageDetails();

  GrafeasV1beta1PackageDetails.fromJson(core.Map _json) {
    if (_json.containsKey("installation")) {
      installation = new Installation.fromJson(_json["installation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (installation != null) {
      _json["installation"] = (installation).toJson();
    }
    return _json;
  }
}

/// Details of a vulnerability Occurrence.
class GrafeasV1beta1VulnerabilityDetails {
  /// Output only. The CVSS score of this vulnerability. CVSS score is on a
  /// scale of 0-10 where 0 indicates low severity and 10 indicates high
  /// severity.
  core.double cvssScore;

  /// The distro assigned severity for this vulnerability when it is
  /// available, and note provider assigned severity when distro has not yet
  /// assigned a severity for this vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String effectiveSeverity;

  /// Output only. A detailed description of this vulnerability.
  core.String longDescription;

  /// Required. The set of affected locations and their fixes (if available)
  /// within the associated resource.
  core.List<PackageIssue> packageIssue;

  /// Output only. URLs related to this vulnerability.
  core.List<RelatedUrl> relatedUrls;

  /// Output only. The note provider assigned Severity of the vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String severity;

  /// Output only. A one sentence description of this vulnerability.
  core.String shortDescription;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc)
  core.String type;

  GrafeasV1beta1VulnerabilityDetails();

  GrafeasV1beta1VulnerabilityDetails.fromJson(core.Map _json) {
    if (_json.containsKey("cvssScore")) {
      cvssScore = _json["cvssScore"].toDouble();
    }
    if (_json.containsKey("effectiveSeverity")) {
      effectiveSeverity = _json["effectiveSeverity"];
    }
    if (_json.containsKey("longDescription")) {
      longDescription = _json["longDescription"];
    }
    if (_json.containsKey("packageIssue")) {
      packageIssue = (_json["packageIssue"] as core.List)
          .map<PackageIssue>((value) => new PackageIssue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("relatedUrls")) {
      relatedUrls = (_json["relatedUrls"] as core.List)
          .map<RelatedUrl>((value) => new RelatedUrl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("shortDescription")) {
      shortDescription = _json["shortDescription"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cvssScore != null) {
      _json["cvssScore"] = cvssScore;
    }
    if (effectiveSeverity != null) {
      _json["effectiveSeverity"] = effectiveSeverity;
    }
    if (longDescription != null) {
      _json["longDescription"] = longDescription;
    }
    if (packageIssue != null) {
      _json["packageIssue"] =
          packageIssue.map((value) => (value).toJson()).toList();
    }
    if (relatedUrls != null) {
      _json["relatedUrls"] =
          relatedUrls.map((value) => (value).toJson()).toList();
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (shortDescription != null) {
      _json["shortDescription"] = shortDescription;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Container message for hash values.
class Hash {
  /// Required. The type of hash that was performed.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : Unknown.
  /// - "SHA256" : A SHA-256 hash.
  core.String type;

  /// Required. The hash value.
  core.String value;
  core.List<core.int> get valueAsBytes {
    return convert.base64.decode(value);
  }

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Hash();

  Hash.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// This submessage provides human-readable hints about the purpose of the
/// authority. Because the name of a note acts as its resource reference, it is
/// important to disambiguate the canonical name of the Note (which might be a
/// UUID for security purposes) from "readable" names more suitable for debug
/// output. Note that these hints should not be used to look up authorities in
/// security sensitive contexts, such as when looking up attestations to
/// verify.
class Hint {
  /// Required. The human readable name of this attestation authority, for
  /// example "qa".
  core.String humanReadableName;

  Hint();

  Hint.fromJson(core.Map _json) {
    if (_json.containsKey("humanReadableName")) {
      humanReadableName = _json["humanReadableName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (humanReadableName != null) {
      _json["humanReadableName"] = humanReadableName;
    }
    return _json;
  }
}

/// This represents how a particular software package may be installed on a
/// system.
class Installation {
  /// Required. All of the places within the filesystem versions of this package
  /// have been found.
  core.List<Location> location;

  /// Output only. The name of the installed package.
  core.String name;

  Installation();

  Installation.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = (_json["location"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (location != null) {
      _json["location"] = location.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

class KnowledgeBase {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  core.String name;

  /// A link to the KB in the Windows update catalog -
  /// https://www.catalog.update.microsoft.com/
  core.String url;

  KnowledgeBase();

  KnowledgeBase.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String arguments;

  /// Required. The recovered Dockerfile directive used to construct this layer.
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
    if (_json.containsKey("arguments")) {
      arguments = _json["arguments"];
    }
    if (_json.containsKey("directive")) {
      directive = _json["directive"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (arguments != null) {
      _json["arguments"] = arguments;
    }
    if (directive != null) {
      _json["directive"] = directive;
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
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("occurrences")) {
      occurrences = (_json["occurrences"] as core.List)
          .map<Occurrence>((value) => new Occurrence.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (occurrences != null) {
      _json["occurrences"] =
          occurrences.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing notes.
class ListNotesResponse {
  /// The next pagination token in the list response. It should be used as
  /// `page_token` for the following request. An empty value means no more
  /// results.
  core.String nextPageToken;

  /// The notes requested.
  core.List<Note> notes;

  ListNotesResponse();

  ListNotesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("notes")) {
      notes = (_json["notes"] as core.List)
          .map<Note>((value) => new Note.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (notes != null) {
      _json["notes"] = notes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing occurrences.
class ListOccurrencesResponse {
  /// The next pagination token in the list response. It should be used as
  /// `page_token` for the following request. An empty value means no more
  /// results.
  core.String nextPageToken;

  /// The occurrences requested.
  core.List<Occurrence> occurrences;

  ListOccurrencesResponse();

  ListOccurrencesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("occurrences")) {
      occurrences = (_json["occurrences"] as core.List)
          .map<Occurrence>((value) => new Occurrence.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (occurrences != null) {
      _json["occurrences"] =
          occurrences.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing scan configurations.
class ListScanConfigsResponse {
  /// The next pagination token in the list response. It should be used as
  /// `page_token` for the following request. An empty value means no more
  /// results.
  core.String nextPageToken;

  /// The scan configurations requested.
  core.List<ScanConfig> scanConfigs;

  ListScanConfigsResponse();

  ListScanConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("scanConfigs")) {
      scanConfigs = (_json["scanConfigs"] as core.List)
          .map<ScanConfig>((value) => new ScanConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (scanConfigs != null) {
      _json["scanConfigs"] =
          scanConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An occurrence of a particular package installation found within a system's
/// filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
class Location {
  /// Required. The CPE URI in [CPE
  /// format](https://cpe.mitre.org/specification/)
  /// denoting the package manager version distributing a package.
  core.String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String path;

  /// The version installed at this location.
  Version version;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("cpeUri")) {
      cpeUri = _json["cpeUri"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("version")) {
      version = new Version.fromJson(_json["version"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cpeUri != null) {
      _json["cpeUri"] = cpeUri;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (version != null) {
      _json["version"] = (version).toJson();
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

  /// Output only. The time this note was created. This field can be used as a
  /// filter in list requests.
  core.String createTime;

  /// A note describing something that can be deployed.
  Deployable deployable;

  /// A note describing the initial analysis of a resource.
  Discovery discovery;

  /// Time of expiration for this note. Empty if note does not expire.
  core.String expirationTime;

  /// Output only. The type of analysis. This field can be used as a filter in
  /// list requests.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Unknown.
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
  core.String kind;

  /// A detailed description of this note.
  core.String longDescription;

  /// Output only. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  core.String name;

  /// A note describing a package hosted by various package managers.
  Package package;

  /// Other notes related to this note.
  core.List<core.String> relatedNoteNames;

  /// URLs associated with this note.
  core.List<RelatedUrl> relatedUrl;

  /// A one sentence description of this note.
  core.String shortDescription;

  /// Output only. The time this note was last updated. This field can be used
  /// as
  /// a filter in list requests.
  core.String updateTime;

  /// A note describing a package vulnerability.
  Vulnerability vulnerability;

  Note();

  Note.fromJson(core.Map _json) {
    if (_json.containsKey("attestationAuthority")) {
      attestationAuthority =
          new Authority.fromJson(_json["attestationAuthority"]);
    }
    if (_json.containsKey("baseImage")) {
      baseImage = new Basis.fromJson(_json["baseImage"]);
    }
    if (_json.containsKey("build")) {
      build = new Build.fromJson(_json["build"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("deployable")) {
      deployable = new Deployable.fromJson(_json["deployable"]);
    }
    if (_json.containsKey("discovery")) {
      discovery = new Discovery.fromJson(_json["discovery"]);
    }
    if (_json.containsKey("expirationTime")) {
      expirationTime = _json["expirationTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("longDescription")) {
      longDescription = _json["longDescription"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("package")) {
      package = new Package.fromJson(_json["package"]);
    }
    if (_json.containsKey("relatedNoteNames")) {
      relatedNoteNames =
          (_json["relatedNoteNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("relatedUrl")) {
      relatedUrl = (_json["relatedUrl"] as core.List)
          .map<RelatedUrl>((value) => new RelatedUrl.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shortDescription")) {
      shortDescription = _json["shortDescription"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("vulnerability")) {
      vulnerability = new Vulnerability.fromJson(_json["vulnerability"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attestationAuthority != null) {
      _json["attestationAuthority"] = (attestationAuthority).toJson();
    }
    if (baseImage != null) {
      _json["baseImage"] = (baseImage).toJson();
    }
    if (build != null) {
      _json["build"] = (build).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (deployable != null) {
      _json["deployable"] = (deployable).toJson();
    }
    if (discovery != null) {
      _json["discovery"] = (discovery).toJson();
    }
    if (expirationTime != null) {
      _json["expirationTime"] = expirationTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (longDescription != null) {
      _json["longDescription"] = longDescription;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (package != null) {
      _json["package"] = (package).toJson();
    }
    if (relatedNoteNames != null) {
      _json["relatedNoteNames"] = relatedNoteNames;
    }
    if (relatedUrl != null) {
      _json["relatedUrl"] =
          relatedUrl.map((value) => (value).toJson()).toList();
    }
    if (shortDescription != null) {
      _json["shortDescription"] = shortDescription;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (vulnerability != null) {
      _json["vulnerability"] = (vulnerability).toJson();
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

  /// Output only. The time this occurrence was created.
  core.String createTime;

  /// Describes the deployment of an artifact on a runtime.
  GrafeasV1beta1DeploymentDetails deployment;

  /// Describes how this resource derives from the basis in the associated
  /// note.
  GrafeasV1beta1ImageDetails derivedImage;

  /// Describes when a resource was discovered.
  GrafeasV1beta1DiscoveryDetails discovered;

  /// Describes the installation of a package on the linked resource.
  GrafeasV1beta1PackageDetails installation;

  /// Output only. This explicitly denotes which of the occurrence details are
  /// specified. This field can be used as a filter in list requests.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Unknown.
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
  core.String kind;

  /// Output only. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  core.String name;

  /// Required. Immutable. The analysis note associated with this occurrence, in
  /// the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be
  /// used as a filter in list requests.
  core.String noteName;

  /// A description of actions that can be taken to remedy the note.
  core.String remediation;

  /// Required. Immutable. The resource for which the occurrence applies.
  Resource resource;

  /// Output only. The time this occurrence was last updated.
  core.String updateTime;

  /// Describes a security vulnerability.
  GrafeasV1beta1VulnerabilityDetails vulnerability;

  Occurrence();

  Occurrence.fromJson(core.Map _json) {
    if (_json.containsKey("attestation")) {
      attestation = new Details.fromJson(_json["attestation"]);
    }
    if (_json.containsKey("build")) {
      build = new GrafeasV1beta1BuildDetails.fromJson(_json["build"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("deployment")) {
      deployment =
          new GrafeasV1beta1DeploymentDetails.fromJson(_json["deployment"]);
    }
    if (_json.containsKey("derivedImage")) {
      derivedImage =
          new GrafeasV1beta1ImageDetails.fromJson(_json["derivedImage"]);
    }
    if (_json.containsKey("discovered")) {
      discovered =
          new GrafeasV1beta1DiscoveryDetails.fromJson(_json["discovered"]);
    }
    if (_json.containsKey("installation")) {
      installation =
          new GrafeasV1beta1PackageDetails.fromJson(_json["installation"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("noteName")) {
      noteName = _json["noteName"];
    }
    if (_json.containsKey("remediation")) {
      remediation = _json["remediation"];
    }
    if (_json.containsKey("resource")) {
      resource = new Resource.fromJson(_json["resource"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("vulnerability")) {
      vulnerability = new GrafeasV1beta1VulnerabilityDetails.fromJson(
          _json["vulnerability"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attestation != null) {
      _json["attestation"] = (attestation).toJson();
    }
    if (build != null) {
      _json["build"] = (build).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (deployment != null) {
      _json["deployment"] = (deployment).toJson();
    }
    if (derivedImage != null) {
      _json["derivedImage"] = (derivedImage).toJson();
    }
    if (discovered != null) {
      _json["discovered"] = (discovered).toJson();
    }
    if (installation != null) {
      _json["installation"] = (installation).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (noteName != null) {
      _json["noteName"] = noteName;
    }
    if (remediation != null) {
      _json["remediation"] = remediation;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (vulnerability != null) {
      _json["vulnerability"] = (vulnerability).toJson();
    }
    return _json;
  }
}

/// This represents a particular package that is distributed over various
/// channels. E.g., glibc (aka libc6) is distributed by many, at various
/// versions.
class Package {
  /// The various channels by which a package is distributed.
  core.List<Distribution> distribution;

  /// Required. Immutable. The name of the package.
  core.String name;

  Package();

  Package.fromJson(core.Map _json) {
    if (_json.containsKey("distribution")) {
      distribution = (_json["distribution"] as core.List)
          .map<Distribution>((value) => new Distribution.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (distribution != null) {
      _json["distribution"] =
          distribution.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// This message wraps a location affected by a vulnerability and its
/// associated fix (if one is available).
class PackageIssue {
  /// Required. The location of the vulnerability.
  VulnerabilityLocation affectedLocation;

  /// The location of the available fix for vulnerability.
  VulnerabilityLocation fixedLocation;

  /// Deprecated, use Details.effective_severity instead
  /// The severity (e.g., distro assigned severity) for this vulnerability.
  core.String severityName;

  PackageIssue();

  PackageIssue.fromJson(core.Map _json) {
    if (_json.containsKey("affectedLocation")) {
      affectedLocation =
          new VulnerabilityLocation.fromJson(_json["affectedLocation"]);
    }
    if (_json.containsKey("fixedLocation")) {
      fixedLocation =
          new VulnerabilityLocation.fromJson(_json["fixedLocation"]);
    }
    if (_json.containsKey("severityName")) {
      severityName = _json["severityName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (affectedLocation != null) {
      _json["affectedLocation"] = (affectedLocation).toJson();
    }
    if (fixedLocation != null) {
      _json["fixedLocation"] = (fixedLocation).toJson();
    }
    if (severityName != null) {
      _json["severityName"] = severityName;
    }
    return _json;
  }
}

/// An attestation wrapper with a PGP-compatible signature. This message only
/// supports `ATTACHED` signatures, where the payload that is signed is included
/// alongside the signature itself in the same file.
class PgpSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed.
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of
  /// that
  /// type (for example by validating a JSON schema).
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : `ContentType` is not set.
  /// - "SIMPLE_SIGNING_JSON" : Atomic format attestation signature. See
  /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
  /// The payload extracted from `signature` is a JSON blob conforming to the
  /// linked schema.
  core.String contentType;

  /// The cryptographic fingerprint of the key used to generate the signature,
  /// as output by, e.g. `gpg --list-keys`. This should be the version 4, full
  /// 160-bit fingerprint, expressed as a 40 character hexidecimal string. See
  /// https://tools.ietf.org/html/rfc4880#section-12.2 for details.
  /// Implementations may choose to acknowledge "LONG", "SHORT", or other
  /// abbreviated key IDs, but only the full fingerprint is guaranteed to work.
  /// In gpg, the full fingerprint can be retrieved from the `fpr` field
  /// returned when calling --list-keys with --with-colons.  For example:
  /// ```
  /// gpg --with-colons --with-fingerprint --force-v4-certs \
  ///     --list-keys attester@example.com
  /// tru::1:1513631572:0:3:1:5
  /// pub:...<SNIP>...
  /// fpr:::::::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB:
  /// ```
  /// Above, the fingerprint is `24FF6481B76AC91E66A00AC657A93A81EF3AE6FB`.
  core.String pgpKeyId;

  /// Required. The raw content of the signature, as output by GNU Privacy Guard
  /// (GPG) or equivalent. Since this message only supports attached signatures,
  /// the payload that was signed must be attached. While the signature format
  /// supported is dependent on the verification implementation, currently only
  /// ASCII-armored (`--armor` to gpg), non-clearsigned (`--sign` rather than
  /// `--clearsign` to gpg) are supported. Concretely, `gpg --sign --armor
  /// --output=signature.gpg payload.json` will create the signature content
  /// expected in this field in `signature.gpg` for the `payload.json`
  /// attestation payload.
  core.String signature;

  PgpSignedAttestation();

  PgpSignedAttestation.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("pgpKeyId")) {
      pgpKeyId = _json["pgpKeyId"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (pgpKeyId != null) {
      _json["pgpKeyId"] = pgpKeyId;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
class ProjectRepoId {
  /// The ID of the project.
  core.String projectId;

  /// The name of the repo. Leave empty for the default repo.
  core.String repoName;

  ProjectRepoId();

  ProjectRepoId.fromJson(core.Map _json) {
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("repoName")) {
      repoName = _json["repoName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (repoName != null) {
      _json["repoName"] = repoName;
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
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (url != null) {
      _json["url"] = url;
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
    if (_json.containsKey("projectRepoId")) {
      projectRepoId = new ProjectRepoId.fromJson(_json["projectRepoId"]);
    }
    if (_json.containsKey("uid")) {
      uid = _json["uid"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (projectRepoId != null) {
      _json["projectRepoId"] = (projectRepoId).toJson();
    }
    if (uid != null) {
      _json["uid"] = uid;
    }
    return _json;
  }
}

/// An entity that can have metadata. For example, a Docker image.
class Resource {
  /// Deprecated, do not use. Use uri instead.
  ///
  /// The hash of the resource content. For example, the Docker digest.
  Hash contentHash;

  /// Deprecated, do not use. Use uri instead.
  ///
  /// The name of the resource. For example, the name of a Docker image -
  /// "Debian".
  core.String name;

  /// Required. The unique URI of the resource. For example,
  /// `https://gcr.io/project/image@sha256:foo` for a Docker image.
  core.String uri;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey("contentHash")) {
      contentHash = new Hash.fromJson(_json["contentHash"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentHash != null) {
      _json["contentHash"] = (contentHash).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// A scan configuration specifies whether Cloud components in a project have a
/// particular type of analysis being run. For example, it can configure whether
/// vulnerability scanning is being done on Docker images or not.
class ScanConfig {
  /// Output only. The time this scan config was created.
  core.String createTime;

  /// Output only. A human-readable description of what the scan configuration
  /// does.
  core.String description;

  /// Whether the scan is enabled.
  core.bool enabled;

  /// Output only. The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  core.String name;

  /// Output only. The time this scan config was last updated.
  core.String updateTime;

  ScanConfig();

  ScanConfig.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Verifiers (e.g. Kritis implementations) MUST verify signatures
/// with respect to the trust anchors defined in policy (e.g. a Kritis policy).
/// Typically this means that the verifier has been configured with a map from
/// `public_key_id` to public key material (and any required parameters, e.g.
/// signing algorithm).
///
/// In particular, verification implementations MUST NOT treat the signature
/// `public_key_id` as anything more than a key lookup hint. The `public_key_id`
/// DOES NOT validate or authenticate a public key; it only provides a mechanism
/// for quickly selecting a public key ALREADY CONFIGURED on the verifier
/// through
/// a trusted channel. Verification implementations MUST reject signatures in
/// any
/// of the following circumstances:
///   * The `public_key_id` is not recognized by the verifier.
///   * The public key that `public_key_id` refers to does not verify the
///     signature with respect to the payload.
///
/// The `signature` contents SHOULD NOT be "attached" (where the payload is
/// included with the serialized `signature` bytes). Verifiers MUST ignore any
/// "attached" payload and only verify signatures with respect to explicitly
/// provided payload (e.g. a `payload` field on the proto message that holds
/// this Signature, or the canonical serialization of the proto message that
/// holds this signature).
class Signature {
  /// The identifier for the public key that verifies this signature.
  ///   * The `public_key_id` is required.
  ///   * The `public_key_id` MUST be an RFC3986 conformant URI.
  ///   * When possible, the `public_key_id` SHOULD be an immutable reference,
  ///     such as a cryptographic digest.
  ///
  /// Examples of valid `public_key_id`s:
  ///
  /// OpenPGP V4 public key fingerprint:
  ///   * "openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA"
  /// See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more
  /// details on this scheme.
  ///
  /// RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER
  /// serialization):
  ///   * "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU"
  /// *
  /// "nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
  core.String publicKeyId;

  /// The content of the signature, an opaque bytestring.
  /// The payload that this signature verifies MUST be unambiguously provided
  /// with the Signature during verification. A wrapper message might provide
  /// the payload explicitly. Alternatively, a message might have a canonical
  /// serialization that can always be unambiguously computed to derive the
  /// payload.
  core.String signature;
  core.List<core.int> get signatureAsBytes {
    return convert.base64.decode(signature);
  }

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Signature();

  Signature.fromJson(core.Map _json) {
    if (_json.containsKey("publicKeyId")) {
      publicKeyId = _json["publicKeyId"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publicKeyId != null) {
      _json["publicKeyId"] = publicKeyId;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/// Source describes the location of the source used for the build.
class Source {
  /// If provided, some of the source code used for the build may be found in
  /// these locations, in the case where the source repository had multiple
  /// remotes or submodules. This list will not include the context specified in
  /// the context field.
  core.List<SourceContext> additionalContexts;

  /// If provided, the input binary artifacts for the build came from this
  /// location.
  core.String artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  SourceContext context;

  /// Hash(es) of the build source, which can be used to verify that the
  /// original
  /// source integrity was maintained in the build.
  ///
  /// The keys to this map are file paths used as build source and the values
  /// contain the hash values for those files.
  ///
  /// If the build source came in a single package such as a gzipped tarfile
  /// (.tar.gz), the FileHash will be for the single path to that file.
  core.Map<core.String, FileHashes> fileHashes;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("additionalContexts")) {
      additionalContexts = (_json["additionalContexts"] as core.List)
          .map<SourceContext>((value) => new SourceContext.fromJson(value))
          .toList();
    }
    if (_json.containsKey("artifactStorageSourceUri")) {
      artifactStorageSourceUri = _json["artifactStorageSourceUri"];
    }
    if (_json.containsKey("context")) {
      context = new SourceContext.fromJson(_json["context"]);
    }
    if (_json.containsKey("fileHashes")) {
      fileHashes = commons.mapMap<core.Map, FileHashes>(
          _json["fileHashes"].cast<core.String, core.Map>(),
          (core.Map item) => new FileHashes.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalContexts != null) {
      _json["additionalContexts"] =
          additionalContexts.map((value) => (value).toJson()).toList();
    }
    if (artifactStorageSourceUri != null) {
      _json["artifactStorageSourceUri"] = artifactStorageSourceUri;
    }
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (fileHashes != null) {
      _json["fileHashes"] =
          commons.mapMap<FileHashes, core.Map<core.String, core.Object>>(
              fileHashes, (FileHashes item) => (item).toJson());
    }
    return _json;
  }
}

/// A SourceContext is a reference to a tree of files. A SourceContext together
/// with a path point to a unique revision of a single file or directory.
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
    if (_json.containsKey("cloudRepo")) {
      cloudRepo = new CloudRepoSourceContext.fromJson(_json["cloudRepo"]);
    }
    if (_json.containsKey("gerrit")) {
      gerrit = new GerritSourceContext.fromJson(_json["gerrit"]);
    }
    if (_json.containsKey("git")) {
      git = new GitSourceContext.fromJson(_json["git"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudRepo != null) {
      _json["cloudRepo"] = (cloudRepo).toJson();
    }
    if (gerrit != null) {
      _json["gerrit"] = (gerrit).toJson();
    }
    if (git != null) {
      _json["git"] = (git).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
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
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Version contains structured information about the version of a package.
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  core.int epoch;

  /// Required. Distinguishes between sentinel MIN/MAX versions and normal
  /// versions.
  /// Possible string values are:
  /// - "VERSION_KIND_UNSPECIFIED" : Unknown.
  /// - "NORMAL" : A standard package version.
  /// - "MINIMUM" : A special version representing negative infinity.
  /// - "MAXIMUM" : A special version representing positive infinity.
  core.String kind;

  /// Required only when version kind is NORMAL. The main part of the version
  /// name.
  core.String name;

  /// The iteration of the package build from the above version.
  core.String revision;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey("epoch")) {
      epoch = _json["epoch"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("revision")) {
      revision = _json["revision"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (epoch != null) {
      _json["epoch"] = epoch;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (revision != null) {
      _json["revision"] = revision;
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
  /// vulnerability. One entry per (version range and cpe_uri) the package
  /// vulnerability has manifested in.
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

  /// Windows details get their own format because the information format and
  /// model don't match a normal detail. Specifically Windows updates are done
  /// as
  /// patches, thus Windows vulnerabilities really are a missing package, rather
  /// than a package being at an incorrect version.
  core.List<WindowsDetail> windowsDetails;

  Vulnerability();

  Vulnerability.fromJson(core.Map _json) {
    if (_json.containsKey("cvssScore")) {
      cvssScore = _json["cvssScore"].toDouble();
    }
    if (_json.containsKey("cvssV3")) {
      cvssV3 = new CVSSv3.fromJson(_json["cvssV3"]);
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<Detail>((value) => new Detail.fromJson(value))
          .toList();
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("windowsDetails")) {
      windowsDetails = (_json["windowsDetails"] as core.List)
          .map<WindowsDetail>((value) => new WindowsDetail.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cvssScore != null) {
      _json["cvssScore"] = cvssScore;
    }
    if (cvssV3 != null) {
      _json["cvssV3"] = (cvssV3).toJson();
    }
    if (details != null) {
      _json["details"] = details.map((value) => (value).toJson()).toList();
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (windowsDetails != null) {
      _json["windowsDetails"] =
          windowsDetails.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The location of the vulnerability.
class VulnerabilityLocation {
  /// Required. The CPE URI in [cpe
  /// format](https://cpe.mitre.org/specification/)
  /// format. Examples include distro or storage location for vulnerable jar.
  core.String cpeUri;

  /// Required. The package being described.
  core.String package;

  /// Required. The version of the package being described.
  Version version;

  VulnerabilityLocation();

  VulnerabilityLocation.fromJson(core.Map _json) {
    if (_json.containsKey("cpeUri")) {
      cpeUri = _json["cpeUri"];
    }
    if (_json.containsKey("package")) {
      package = _json["package"];
    }
    if (_json.containsKey("version")) {
      version = new Version.fromJson(_json["version"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cpeUri != null) {
      _json["cpeUri"] = cpeUri;
    }
    if (package != null) {
      _json["package"] = package;
    }
    if (version != null) {
      _json["version"] = (version).toJson();
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
    if (_json.containsKey("counts")) {
      counts = (_json["counts"] as core.List)
          .map<FixableTotalByDigest>(
              (value) => new FixableTotalByDigest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (counts != null) {
      _json["counts"] = counts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class WindowsDetail {
  /// Required. The CPE URI in
  /// [cpe format](https://cpe.mitre.org/specification/) in which the
  /// vulnerability manifests. Examples include distro or storage location for
  /// vulnerable jar.
  core.String cpeUri;

  /// The description of the vulnerability.
  core.String description;

  /// Required. The names of the KBs which have hotfixes to mitigate this
  /// vulnerability. Note that there may be multiple hotfixes (and thus
  /// multiple KBs) that mitigate a given vulnerability. Currently any listed
  /// kb's presence is considered a fix.
  core.List<KnowledgeBase> fixingKbs;

  /// Required. The name of the vulnerability.
  core.String name;

  WindowsDetail();

  WindowsDetail.fromJson(core.Map _json) {
    if (_json.containsKey("cpeUri")) {
      cpeUri = _json["cpeUri"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fixingKbs")) {
      fixingKbs = (_json["fixingKbs"] as core.List)
          .map<KnowledgeBase>((value) => new KnowledgeBase.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cpeUri != null) {
      _json["cpeUri"] = cpeUri;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fixingKbs != null) {
      _json["fixingKbs"] = fixingKbs.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}
