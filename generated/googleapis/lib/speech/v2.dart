// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Speech-to-Text API - v2
///
/// Converts audio to text by applying powerful neural network models.
///
/// For more information, see
/// <https://cloud.google.com/speech-to-text/docs/quickstart-protocol>
///
/// Create an instance of [SpeechApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConfigResource]
///     - [ProjectsLocationsCustomClassesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPhraseSetsResource]
///     - [ProjectsLocationsRecognizersResource]
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

/// Converts audio to text by applying powerful neural network models.
class SpeechApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  SpeechApi(http.Client client,
      {core.String rootUrl = 'https://speech.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConfigResource get config =>
      ProjectsLocationsConfigResource(_requester);
  ProjectsLocationsCustomClassesResource get customClasses =>
      ProjectsLocationsCustomClassesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPhraseSetsResource get phraseSets =>
      ProjectsLocationsPhraseSetsResource(_requester);
  ProjectsLocationsRecognizersResource get recognizers =>
      ProjectsLocationsRecognizersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the requested Config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the config to retrieve. There is exactly
  /// one config resource per project per location. The expected format is
  /// `projects/{project}/locations/{location}/config`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The name of the config resource. There
  /// is exactly one config resource per project per location. The expected
  /// format is `projects/{project}/locations/{location}/config`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/config$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> update(
    Config request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCustomClassesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCustomClassesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a CustomClass.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location where this CustomClass will
  /// be created. The expected format is
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [customClassId] - The ID to use for the CustomClass, which will become the
  /// final component of the CustomClass's resource name. This value should be
  /// 4-63 characters, and valid characters are /a-z-/.
  ///
  /// [validateOnly] - If set, validate the request and preview the CustomClass,
  /// but do not actually create it.
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
    CustomClass request,
    core.String parent, {
    core.String? customClassId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customClassId != null) 'customClassId': [customClassId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customClasses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the CustomClass.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomClass to delete. Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customClasses/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the CustomClass is not found, the
  /// request will succeed and be a no-op (no Operation is recorded in this
  /// case).
  ///
  /// [etag] - This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [validateOnly] - If set, validate the request and preview the deleted
  /// CustomClass, but do not actually delete it.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested CustomClass.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomClass to retrieve. The expected
  /// format is
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customClasses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomClass> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CustomClasses.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location of CustomClass resources to
  /// list. The expected format is `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Number of results per requests. A valid page_size ranges from
  /// 0 to 100 inclusive. If the page_size is zero or unspecified, a page size
  /// of 5 will be chosen. If the page size exceeds 100, it will be coerced down
  /// to 100. Note that a call might return fewer results than the requested
  /// page size.
  ///
  /// [pageToken] - A page token, received from a previous ListCustomClasses
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListCustomClasses must match the call that
  /// provided the page token.
  ///
  /// [showDeleted] - Whether, or not, to show resources that have been deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomClassesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomClassesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customClasses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomClassesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the CustomClass.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the CustomClass.
  /// Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customClasses/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty, all fields are
  /// considered for update.
  ///
  /// [validateOnly] - If set, validate the request and preview the updated
  /// CustomClass, but do not actually update it.
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
    CustomClass request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes the CustomClass.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomClass to undelete. Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customClasses/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteCustomClassRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPhraseSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPhraseSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a PhraseSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location where this PhraseSet will be
  /// created. The expected format is `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [phraseSetId] - The ID to use for the PhraseSet, which will become the
  /// final component of the PhraseSet's resource name. This value should be
  /// 4-63 characters, and valid characters are /a-z-/.
  ///
  /// [validateOnly] - If set, validate the request and preview the PhraseSet,
  /// but do not actually create it.
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
    PhraseSet request,
    core.String parent, {
    core.String? phraseSetId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (phraseSetId != null) 'phraseSetId': [phraseSetId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/phraseSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the PhraseSet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PhraseSet to delete. Format:
  /// `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseSets/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the PhraseSet is not found, the
  /// request will succeed and be a no-op (no Operation is recorded in this
  /// case).
  ///
  /// [etag] - This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [validateOnly] - If set, validate the request and preview the deleted
  /// PhraseSet, but do not actually delete it.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested PhraseSet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PhraseSet to retrieve. The expected
  /// format is
  /// `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PhraseSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PhraseSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PhraseSet.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists PhraseSets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location of PhraseSet resources to
  /// list. The expected format is `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of PhraseSets to return. The service may
  /// return fewer than this value. If unspecified, at most 5 PhraseSets will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous ListPhraseSets call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to ListPhraseSets must match the call that provided
  /// the page token.
  ///
  /// [showDeleted] - Whether, or not, to show resources that have been deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPhraseSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPhraseSetsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/phraseSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPhraseSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the PhraseSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the PhraseSet.
  /// Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseSets/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. If empty, all non-default
  /// valued fields are considered for update. Use `*` to update the entire
  /// PhraseSet resource.
  ///
  /// [validateOnly] - If set, validate the request and preview the updated
  /// PhraseSet, but do not actually update it.
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
    PhraseSet request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes the PhraseSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PhraseSet to undelete. Format:
  /// `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/phraseSets/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeletePhraseSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRecognizersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRecognizersResource(commons.ApiRequester client)
      : _requester = client;

  /// Performs batch asynchronous speech recognition: send a request with N
  /// audio files and receive a long running operation that can be polled to see
  /// when the transcriptions are finished.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [recognizer] - Required. The name of the Recognizer to use during
  /// recognition. The expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit
  /// Recognizer.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
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
  async.Future<Operation> batchRecognize(
    BatchRecognizeRequest request,
    core.String recognizer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$recognizer') + ':batchRecognize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Recognizer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location where this Recognizer will
  /// be created. The expected format is
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [recognizerId] - The ID to use for the Recognizer, which will become the
  /// final component of the Recognizer's resource name. This value should be
  /// 4-63 characters, and valid characters are /a-z-/.
  ///
  /// [validateOnly] - If set, validate the request and preview the Recognizer,
  /// but do not actually create it.
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
    Recognizer request,
    core.String parent, {
    core.String? recognizerId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (recognizerId != null) 'recognizerId': [recognizerId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/recognizers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the Recognizer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Recognizer to delete. Format:
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the Recognizer is not found, the
  /// request will succeed and be a no-op (no Operation is recorded in this
  /// case).
  ///
  /// [etag] - This checksum is computed by the server based on the value of
  /// other fields. This may be sent on update, undelete, and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [validateOnly] - If set, validate the request and preview the deleted
  /// Recognizer, but do not actually delete it.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested Recognizer.
  ///
  /// Fails with NOT_FOUND if the requested Recognizer doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Recognizer to retrieve. The expected
  /// format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Recognizer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Recognizer> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Recognizer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Recognizers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location of Recognizers to list. The
  /// expected format is `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Recognizers to return. The service may
  /// return fewer than this value. If unspecified, at most 5 Recognizers will
  /// be returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous ListRecognizers call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to ListRecognizers must match the call that provided
  /// the page token.
  ///
  /// [showDeleted] - Whether, or not, to show resources that have been deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRecognizersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRecognizersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/recognizers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRecognizersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Recognizer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the Recognizer.
  /// Format:
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. If empty, all non-default
  /// valued fields are considered for update. Use `*` to update the entire
  /// Recognizer resource.
  ///
  /// [validateOnly] - If set, validate the request and preview the updated
  /// Recognizer, but do not actually update it.
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
    Recognizer request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Performs synchronous Speech recognition: receive results after all audio
  /// has been sent and processed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [recognizer] - Required. The name of the Recognizer to use during
  /// recognition. The expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit
  /// Recognizer.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RecognizeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RecognizeResponse> recognize(
    RecognizeRequest request,
    core.String recognizer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$recognizer') + ':recognize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RecognizeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes the Recognizer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Recognizer to undelete. Format:
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/recognizers/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteRecognizerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A biasing PhraseSet, which can be either a string referencing the name of an
/// existing PhraseSets resource, or an inline definition of a PhraseSet.
class AdaptationPhraseSet {
  /// An inline defined PhraseSet.
  PhraseSet? inlinePhraseSet;

  /// The name of an existing PhraseSet resource.
  ///
  /// The user must have read access to the resource and it must not be deleted.
  core.String? phraseSet;

  AdaptationPhraseSet({
    this.inlinePhraseSet,
    this.phraseSet,
  });

  AdaptationPhraseSet.fromJson(core.Map json_)
      : this(
          inlinePhraseSet: json_.containsKey('inlinePhraseSet')
              ? PhraseSet.fromJson(json_['inlinePhraseSet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          phraseSet: json_.containsKey('phraseSet')
              ? json_['phraseSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inlinePhraseSet != null) 'inlinePhraseSet': inlinePhraseSet!,
        if (phraseSet != null) 'phraseSet': phraseSet!,
      };
}

/// Automatically detected decoding parameters.
///
/// Supported for the following encodings: * WAV_LINEAR16: 16-bit signed
/// little-endian PCM samples in a WAV container. * WAV_MULAW: 8-bit companded
/// mulaw samples in a WAV container. * WAV_ALAW: 8-bit companded alaw samples
/// in a WAV container. * RFC4867_5_AMR: AMR frames with an rfc4867.5 header. *
/// RFC4867_5_AMRWB: AMR-WB frames with an rfc4867.5 header. * FLAC: FLAC frames
/// in the "native FLAC" container format. * MP3: MPEG audio frames with
/// optional (ignored) ID3 metadata. * OGG_OPUS: Opus audio frames in an Ogg
/// container. * WEBM_OPUS: Opus audio frames in a WebM container. * M4A: M4A
/// audio format.
typedef AutoDetectDecodingConfig = $Empty;

/// Metadata about a single file in a batch for BatchRecognize.
class BatchRecognizeFileMetadata {
  /// Features and audio metadata to use for the Automatic Speech Recognition.
  ///
  /// This field in combination with the config_mask field can be used to
  /// override parts of the default_recognition_config of the Recognizer
  /// resource as well as the config at the request level.
  RecognitionConfig? config;

  /// The list of fields in config that override the values in the
  /// default_recognition_config of the recognizer during this recognition
  /// request.
  ///
  /// If no mask is provided, all non-default valued fields in config override
  /// the values in the recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// config completely overrides and replaces the config in the recognizer for
  /// this recognition request.
  core.String? configMask;

  /// Cloud Storage URI for the audio file.
  core.String? uri;

  BatchRecognizeFileMetadata({
    this.config,
    this.configMask,
    this.uri,
  });

  BatchRecognizeFileMetadata.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? RecognitionConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          configMask: json_.containsKey('configMask')
              ? json_['configMask'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (configMask != null) 'configMask': configMask!,
        if (uri != null) 'uri': uri!,
      };
}

/// Request message for the BatchRecognize method.
class BatchRecognizeRequest {
  /// Features and audio metadata to use for the Automatic Speech Recognition.
  ///
  /// This field in combination with the config_mask field can be used to
  /// override parts of the default_recognition_config of the Recognizer
  /// resource.
  RecognitionConfig? config;

  /// The list of fields in config that override the values in the
  /// default_recognition_config of the recognizer during this recognition
  /// request.
  ///
  /// If no mask is provided, all given fields in config override the values in
  /// the recognizer for this recognition request. If a mask is provided, only
  /// the fields listed in the mask override the config in the recognizer for
  /// this recognition request. If a wildcard (`*`) is provided, config
  /// completely overrides and replaces the config in the recognizer for this
  /// recognition request.
  core.String? configMask;

  /// Audio files with file metadata for ASR.
  ///
  /// The maximum number of files allowed to be specified is 5.
  core.List<BatchRecognizeFileMetadata>? files;

  /// Processing strategy to use for this request.
  /// Possible string values are:
  /// - "PROCESSING_STRATEGY_UNSPECIFIED" : Default value for the processing
  /// strategy. The request is processed as soon as its received.
  /// - "DYNAMIC_BATCHING" : If selected, processes the request during lower
  /// utilization periods for a price discount. The request is fulfilled within
  /// 24 hours.
  core.String? processingStrategy;

  /// Configuration options for where to output the transcripts of each file.
  RecognitionOutputConfig? recognitionOutputConfig;

  /// The name of the Recognizer to use during recognition.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`. The
  /// {recognizer} segment may be set to `_` to use an empty implicit
  /// Recognizer.
  ///
  /// Required.
  core.String? recognizer;

  BatchRecognizeRequest({
    this.config,
    this.configMask,
    this.files,
    this.processingStrategy,
    this.recognitionOutputConfig,
    this.recognizer,
  });

  BatchRecognizeRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? RecognitionConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          configMask: json_.containsKey('configMask')
              ? json_['configMask'] as core.String
              : null,
          files: json_.containsKey('files')
              ? (json_['files'] as core.List)
                  .map((value) => BatchRecognizeFileMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          processingStrategy: json_.containsKey('processingStrategy')
              ? json_['processingStrategy'] as core.String
              : null,
          recognitionOutputConfig: json_.containsKey('recognitionOutputConfig')
              ? RecognitionOutputConfig.fromJson(
                  json_['recognitionOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recognizer: json_.containsKey('recognizer')
              ? json_['recognizer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (configMask != null) 'configMask': configMask!,
        if (files != null) 'files': files!,
        if (processingStrategy != null)
          'processingStrategy': processingStrategy!,
        if (recognitionOutputConfig != null)
          'recognitionOutputConfig': recognitionOutputConfig!,
        if (recognizer != null) 'recognizer': recognizer!,
      };
}

/// An item of the class.
typedef ClassItem = $ClassItem;

/// Message representing the config for the Speech-to-Text API.
///
/// This includes an optional
/// [KMS key](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with
/// which incoming data will be encrypted.
class Config {
  /// An optional
  /// [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys)
  /// that if present, will be used to encrypt Speech-to-Text resources at-rest.
  ///
  /// Updating this key will not encrypt existing resources using this key; only
  /// new resources will be encrypted using this key. The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// Identifier.
  ///
  /// The name of the config resource. There is exactly one config resource per
  /// project per location. The expected format is
  /// `projects/{project}/locations/{location}/config`.
  ///
  /// Output only.
  core.String? name;

  /// The most recent time this resource was modified.
  ///
  /// Output only.
  core.String? updateTime;

  Config({
    this.kmsKeyName,
    this.name,
    this.updateTime,
  });

  Config.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// CustomClass for biasing in speech recognition.
///
/// Used to define a set of words or phrases that represents a common concept or
/// theme likely to appear in your audio, for example a list of passenger ship
/// names.
class CustomClass {
  /// Allows users to store small amounts of arbitrary data.
  ///
  /// Both the key and the value must be 63 characters or less each. At most 100
  /// annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this resource was requested for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-settable, human-readable name for the CustomClass.
  ///
  /// Must be 63 characters or less.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The time at which this resource will be purged.
  ///
  /// Output only.
  core.String? expireTime;

  /// A collection of class items.
  core.List<ClassItem>? items;

  /// The
  /// [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys)
  /// with which the CustomClass is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Output only.
  core.String? kmsKeyName;

  /// The
  /// [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the CustomClass is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  ///
  /// Output only.
  core.String? kmsKeyVersionName;

  /// Identifier.
  ///
  /// The resource name of the CustomClass. Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`.
  ///
  /// Output only.
  core.String? name;

  /// Whether or not this CustomClass is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The CustomClass lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state. This is only used/useful for
  /// distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETED" : This CustomClass has been deleted.
  core.String? state;

  /// System-assigned unique identifier for the CustomClass.
  ///
  /// Output only.
  core.String? uid;

  /// The most recent time this resource was modified.
  ///
  /// Output only.
  core.String? updateTime;

  CustomClass({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.expireTime,
    this.items,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

  CustomClass.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ClassItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (items != null) 'items': items!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single replacement configuration.
typedef Entry = $Entry;

/// Explicitly specified decoding parameters.
class ExplicitDecodingConfig {
  /// Number of channels present in the audio data sent for recognition.
  ///
  /// Supported for the following encodings: * LINEAR16: Headerless 16-bit
  /// signed little-endian PCM samples. * MULAW: Headerless 8-bit companded
  /// mulaw samples. * ALAW: Headerless 8-bit companded alaw samples. The
  /// maximum allowed value is 8.
  core.int? audioChannelCount;

  /// Encoding of the audio data sent for recognition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Default value. This value is unused.
  /// - "LINEAR16" : Headerless 16-bit signed little-endian PCM samples.
  /// - "MULAW" : Headerless 8-bit companded mulaw samples.
  /// - "ALAW" : Headerless 8-bit companded alaw samples.
  core.String? encoding;

  /// Sample rate in Hertz of the audio data sent for recognition.
  ///
  /// Valid values are: 8000-48000. 16000 is optimal. For best results, set the
  /// sampling rate of the audio source to 16000 Hz. If that's not possible, use
  /// the native sample rate of the audio source (instead of re-sampling).
  /// Supported for the following encodings: * LINEAR16: Headerless 16-bit
  /// signed little-endian PCM samples. * MULAW: Headerless 8-bit companded
  /// mulaw samples. * ALAW: Headerless 8-bit companded alaw samples.
  core.int? sampleRateHertz;

  ExplicitDecodingConfig({
    this.audioChannelCount,
    this.encoding,
    this.sampleRateHertz,
  });

  ExplicitDecodingConfig.fromJson(core.Map json_)
      : this(
          audioChannelCount: json_.containsKey('audioChannelCount')
              ? json_['audioChannelCount'] as core.int
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          sampleRateHertz: json_.containsKey('sampleRateHertz')
              ? json_['sampleRateHertz'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioChannelCount != null) 'audioChannelCount': audioChannelCount!,
        if (encoding != null) 'encoding': encoding!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
      };
}

/// Output configurations for Cloud Storage.
class GcsOutputConfig {
  /// The Cloud Storage URI prefix with which recognition results will be
  /// written.
  core.String? uri;

  GcsOutputConfig({
    this.uri,
  });

  GcsOutputConfig.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Output configurations for inline response.
typedef InlineOutputConfig = $Empty;

/// Response message for the ListCustomClasses method.
class ListCustomClassesResponse {
  /// The list of requested CustomClasses.
  core.List<CustomClass>? customClasses;

  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. This token
  /// expires after 72 hours.
  core.String? nextPageToken;

  ListCustomClassesResponse({
    this.customClasses,
    this.nextPageToken,
  });

  ListCustomClassesResponse.fromJson(core.Map json_)
      : this(
          customClasses: json_.containsKey('customClasses')
              ? (json_['customClasses'] as core.List)
                  .map((value) => CustomClass.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customClasses != null) 'customClasses': customClasses!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message for the ListPhraseSets method.
class ListPhraseSetsResponse {
  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. This token
  /// expires after 72 hours.
  core.String? nextPageToken;

  /// The list of requested PhraseSets.
  core.List<PhraseSet>? phraseSets;

  ListPhraseSetsResponse({
    this.nextPageToken,
    this.phraseSets,
  });

  ListPhraseSetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          phraseSets: json_.containsKey('phraseSets')
              ? (json_['phraseSets'] as core.List)
                  .map((value) => PhraseSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (phraseSets != null) 'phraseSets': phraseSets!,
      };
}

/// Response message for the ListRecognizers method.
class ListRecognizersResponse {
  /// A token, which can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. This token
  /// expires after 72 hours.
  core.String? nextPageToken;

  /// The list of requested Recognizers.
  core.List<Recognizer>? recognizers;

  ListRecognizersResponse({
    this.nextPageToken,
    this.recognizers,
  });

  ListRecognizersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          recognizers: json_.containsKey('recognizers')
              ? (json_['recognizers'] as core.List)
                  .map((value) => Recognizer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (recognizers != null) 'recognizers': recognizers!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Output configurations for serialized `BatchRecognizeResults` protos.
typedef NativeOutputFileFormatConfig = $Empty;

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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// Configuration for the format of the results stored to `output`.
class OutputFormatConfig {
  /// Configuration for the native output format.
  ///
  /// If this field is set or if no other output format field is set then
  /// transcripts will be written to the sink in the native format.
  NativeOutputFileFormatConfig? native;

  /// Configuration for the srt output format.
  ///
  /// If this field is set then transcripts will be written to the sink in the
  /// srt format.
  SrtOutputFileFormatConfig? srt;

  /// Configuration for the vtt output format.
  ///
  /// If this field is set then transcripts will be written to the sink in the
  /// vtt format.
  VttOutputFileFormatConfig? vtt;

  OutputFormatConfig({
    this.native,
    this.srt,
    this.vtt,
  });

  OutputFormatConfig.fromJson(core.Map json_)
      : this(
          native: json_.containsKey('native')
              ? NativeOutputFileFormatConfig.fromJson(
                  json_['native'] as core.Map<core.String, core.dynamic>)
              : null,
          srt: json_.containsKey('srt')
              ? SrtOutputFileFormatConfig.fromJson(
                  json_['srt'] as core.Map<core.String, core.dynamic>)
              : null,
          vtt: json_.containsKey('vtt')
              ? VttOutputFileFormatConfig.fromJson(
                  json_['vtt'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (native != null) 'native': native!,
        if (srt != null) 'srt': srt!,
        if (vtt != null) 'vtt': vtt!,
      };
}

/// A Phrase contains words and phrase "hints" so that the speech recognition is
/// more likely to recognize them.
///
/// This can be used to improve the accuracy for specific words and phrases, for
/// example, if specific commands are typically spoken by the user. This can
/// also be used to add additional words to the vocabulary of the recognizer.
/// List items can also include CustomClass references containing groups of
/// words that represent common concepts that occur in natural language.
class Phrase {
  /// Hint Boost.
  ///
  /// Overrides the boost set at the phrase set level. Positive value will
  /// increase the probability that a specific phrase will be recognized over
  /// other similar sounding phrases. The higher the boost, the higher the
  /// chance of false positive recognition as well. Negative boost values would
  /// correspond to anti-biasing. Anti-biasing is not enabled, so negative boost
  /// values will return an error. Boost values must be between 0 and 20. Any
  /// values outside that range will return an error. We recommend using a
  /// binary search approach to finding the optimal value for your use case as
  /// well as adding phrases both with and without boost to your requests.
  core.double? boost;

  /// The phrase itself.
  core.String? value;

  Phrase({
    this.boost,
    this.value,
  });

  Phrase.fromJson(core.Map json_)
      : this(
          boost: json_.containsKey('boost')
              ? (json_['boost'] as core.num).toDouble()
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boost != null) 'boost': boost!,
        if (value != null) 'value': value!,
      };
}

/// PhraseSet for biasing in speech recognition.
///
/// A PhraseSet is used to provide "hints" to the speech recognizer to favor
/// specific words and phrases in the results.
class PhraseSet {
  /// Allows users to store small amounts of arbitrary data.
  ///
  /// Both the key and the value must be 63 characters or less each. At most 100
  /// annotations.
  core.Map<core.String, core.String>? annotations;

  /// Hint Boost.
  ///
  /// Positive value will increase the probability that a specific phrase will
  /// be recognized over other similar sounding phrases. The higher the boost,
  /// the higher the chance of false positive recognition as well. Valid `boost`
  /// values are between 0 (exclusive) and 20. We recommend using a binary
  /// search approach to finding the optimal value for your use case as well as
  /// adding phrases both with and without boost to your requests.
  core.double? boost;

  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this resource was requested for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-settable, human-readable name for the PhraseSet.
  ///
  /// Must be 63 characters or less.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The time at which this resource will be purged.
  ///
  /// Output only.
  core.String? expireTime;

  /// The
  /// [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys)
  /// with which the PhraseSet is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Output only.
  core.String? kmsKeyName;

  /// The
  /// [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the PhraseSet is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  ///
  /// Output only.
  core.String? kmsKeyVersionName;

  /// Identifier.
  ///
  /// The resource name of the PhraseSet. Format:
  /// `projects/{project}/locations/{location}/phraseSets/{phrase_set}`.
  ///
  /// Output only.
  core.String? name;

  /// A list of word and phrases.
  core.List<Phrase>? phrases;

  /// Whether or not this PhraseSet is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The PhraseSet lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state. This is only used/useful for
  /// distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETED" : This PhraseSet has been deleted.
  core.String? state;

  /// System-assigned unique identifier for the PhraseSet.
  ///
  /// Output only.
  core.String? uid;

  /// The most recent time this resource was modified.
  ///
  /// Output only.
  core.String? updateTime;

  PhraseSet({
    this.annotations,
    this.boost,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.expireTime,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
    this.phrases,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

  PhraseSet.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          boost: json_.containsKey('boost')
              ? (json_['boost'] as core.num).toDouble()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phrases: json_.containsKey('phrases')
              ? (json_['phrases'] as core.List)
                  .map((value) => Phrase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (boost != null) 'boost': boost!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
        if (name != null) 'name': name!,
        if (phrases != null) 'phrases': phrases!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Provides information to the Recognizer that specifies how to process the
/// recognition request.
class RecognitionConfig {
  /// Speech adaptation context that weights recognizer predictions for specific
  /// words and phrases.
  SpeechAdaptation? adaptation;

  /// Automatically detect decoding parameters.
  ///
  /// Preferred for supported formats.
  AutoDetectDecodingConfig? autoDecodingConfig;

  /// Explicitly specified decoding parameters.
  ///
  /// Required if using headerless PCM audio (linear16, mulaw, alaw).
  ExplicitDecodingConfig? explicitDecodingConfig;

  /// Speech recognition features to enable.
  RecognitionFeatures? features;

  /// The language of the supplied audio as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  ///
  /// Language tags are normalized to BCP-47 before they are used eg "en-us"
  /// becomes "en-US". Supported languages for each model are listed in the
  /// [Table of Supported Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  /// If additional languages are provided, recognition result will contain
  /// recognition in the most likely language detected. The recognition result
  /// will include the language tag of the language detected in the audio.
  ///
  /// Optional.
  core.List<core.String>? languageCodes;

  /// Which model to use for recognition requests.
  ///
  /// Select the model best suited to your domain to get best results. Guidance
  /// for choosing which model to use can be found in the
  /// [Transcription Models Documentation](https://cloud.google.com/speech-to-text/v2/docs/transcription-model)
  /// and the models supported in each region can be found in the
  /// [Table Of Supported Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  ///
  /// Optional.
  core.String? model;

  /// Use transcription normalization to automatically replace parts of the
  /// transcript with phrases of your choosing.
  ///
  /// For StreamingRecognize, this normalization only applies to stable partial
  /// transcripts (stability \> 0.8) and final transcripts.
  ///
  /// Optional.
  TranscriptNormalization? transcriptNormalization;

  /// Optional configuration used to automatically run translation on the given
  /// audio to the desired language for supported models.
  ///
  /// Optional.
  TranslationConfig? translationConfig;

  RecognitionConfig({
    this.adaptation,
    this.autoDecodingConfig,
    this.explicitDecodingConfig,
    this.features,
    this.languageCodes,
    this.model,
    this.transcriptNormalization,
    this.translationConfig,
  });

  RecognitionConfig.fromJson(core.Map json_)
      : this(
          adaptation: json_.containsKey('adaptation')
              ? SpeechAdaptation.fromJson(
                  json_['adaptation'] as core.Map<core.String, core.dynamic>)
              : null,
          autoDecodingConfig: json_.containsKey('autoDecodingConfig')
              ? AutoDetectDecodingConfig.fromJson(json_['autoDecodingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          explicitDecodingConfig: json_.containsKey('explicitDecodingConfig')
              ? ExplicitDecodingConfig.fromJson(json_['explicitDecodingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          features: json_.containsKey('features')
              ? RecognitionFeatures.fromJson(
                  json_['features'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCodes: json_.containsKey('languageCodes')
              ? (json_['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          transcriptNormalization: json_.containsKey('transcriptNormalization')
              ? TranscriptNormalization.fromJson(
                  json_['transcriptNormalization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          translationConfig: json_.containsKey('translationConfig')
              ? TranslationConfig.fromJson(json_['translationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adaptation != null) 'adaptation': adaptation!,
        if (autoDecodingConfig != null)
          'autoDecodingConfig': autoDecodingConfig!,
        if (explicitDecodingConfig != null)
          'explicitDecodingConfig': explicitDecodingConfig!,
        if (features != null) 'features': features!,
        if (languageCodes != null) 'languageCodes': languageCodes!,
        if (model != null) 'model': model!,
        if (transcriptNormalization != null)
          'transcriptNormalization': transcriptNormalization!,
        if (translationConfig != null) 'translationConfig': translationConfig!,
      };
}

/// Available recognition features.
class RecognitionFeatures {
  /// Configuration to enable speaker diarization and set additional parameters
  /// to make diarization better suited for your application.
  ///
  /// When this is enabled, we send all the words from the beginning of the
  /// audio for the top alternative in every consecutive STREAMING responses.
  /// This is done in order to improve our speaker tags as our models learn to
  /// identify the speakers in the conversation over time. For non-streaming
  /// requests, the diarization results will be provided only in the top
  /// alternative of the FINAL SpeechRecognitionResult.
  SpeakerDiarizationConfig? diarizationConfig;

  /// If `true`, adds punctuation to recognition result hypotheses.
  ///
  /// This feature is only available in select languages. The default `false`
  /// value does not add punctuation to result hypotheses.
  core.bool? enableAutomaticPunctuation;

  /// The spoken emoji behavior for the call.
  ///
  /// If `true`, adds spoken emoji formatting for the request. This will replace
  /// spoken emojis with the corresponding Unicode symbols in the final
  /// transcript. If `false`, spoken emojis are not replaced.
  core.bool? enableSpokenEmojis;

  /// The spoken punctuation behavior for the call.
  ///
  /// If `true`, replaces spoken punctuation with the corresponding symbols in
  /// the request. For example, "how are you question mark" becomes "how are
  /// you?". See https://cloud.google.com/speech-to-text/docs/spoken-punctuation
  /// for support. If `false`, spoken punctuation is not replaced.
  core.bool? enableSpokenPunctuation;

  /// If `true`, the top result includes a list of words and the confidence for
  /// those words.
  ///
  /// If `false`, no word-level confidence information is returned. The default
  /// is `false`.
  core.bool? enableWordConfidence;

  /// If `true`, the top result includes a list of words and the start and end
  /// time offsets (timestamps) for those words.
  ///
  /// If `false`, no word-level time offset information is returned. The default
  /// is `false`.
  core.bool? enableWordTimeOffsets;

  /// Maximum number of recognition hypotheses to be returned.
  ///
  /// The server may return fewer than `max_alternatives`. Valid values are
  /// `0`-`30`. A value of `0` or `1` will return a maximum of one. If omitted,
  /// will return a maximum of one.
  core.int? maxAlternatives;

  /// Mode for recognizing multi-channel audio.
  /// Possible string values are:
  /// - "MULTI_CHANNEL_MODE_UNSPECIFIED" : Default value for the multi-channel
  /// mode. If the audio contains multiple channels, only the first channel will
  /// be transcribed; other channels will be ignored.
  /// - "SEPARATE_RECOGNITION_PER_CHANNEL" : If selected, each channel in the
  /// provided audio is transcribed independently. This cannot be selected if
  /// the selected model is `latest_short`.
  core.String? multiChannelMode;

  /// If set to `true`, the server will attempt to filter out profanities,
  /// replacing all but the initial character in each filtered word with
  /// asterisks, for instance, "f***".
  ///
  /// If set to `false` or omitted, profanities won't be filtered out.
  core.bool? profanityFilter;

  RecognitionFeatures({
    this.diarizationConfig,
    this.enableAutomaticPunctuation,
    this.enableSpokenEmojis,
    this.enableSpokenPunctuation,
    this.enableWordConfidence,
    this.enableWordTimeOffsets,
    this.maxAlternatives,
    this.multiChannelMode,
    this.profanityFilter,
  });

  RecognitionFeatures.fromJson(core.Map json_)
      : this(
          diarizationConfig: json_.containsKey('diarizationConfig')
              ? SpeakerDiarizationConfig.fromJson(json_['diarizationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableAutomaticPunctuation:
              json_.containsKey('enableAutomaticPunctuation')
                  ? json_['enableAutomaticPunctuation'] as core.bool
                  : null,
          enableSpokenEmojis: json_.containsKey('enableSpokenEmojis')
              ? json_['enableSpokenEmojis'] as core.bool
              : null,
          enableSpokenPunctuation: json_.containsKey('enableSpokenPunctuation')
              ? json_['enableSpokenPunctuation'] as core.bool
              : null,
          enableWordConfidence: json_.containsKey('enableWordConfidence')
              ? json_['enableWordConfidence'] as core.bool
              : null,
          enableWordTimeOffsets: json_.containsKey('enableWordTimeOffsets')
              ? json_['enableWordTimeOffsets'] as core.bool
              : null,
          maxAlternatives: json_.containsKey('maxAlternatives')
              ? json_['maxAlternatives'] as core.int
              : null,
          multiChannelMode: json_.containsKey('multiChannelMode')
              ? json_['multiChannelMode'] as core.String
              : null,
          profanityFilter: json_.containsKey('profanityFilter')
              ? json_['profanityFilter'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diarizationConfig != null) 'diarizationConfig': diarizationConfig!,
        if (enableAutomaticPunctuation != null)
          'enableAutomaticPunctuation': enableAutomaticPunctuation!,
        if (enableSpokenEmojis != null)
          'enableSpokenEmojis': enableSpokenEmojis!,
        if (enableSpokenPunctuation != null)
          'enableSpokenPunctuation': enableSpokenPunctuation!,
        if (enableWordConfidence != null)
          'enableWordConfidence': enableWordConfidence!,
        if (enableWordTimeOffsets != null)
          'enableWordTimeOffsets': enableWordTimeOffsets!,
        if (maxAlternatives != null) 'maxAlternatives': maxAlternatives!,
        if (multiChannelMode != null) 'multiChannelMode': multiChannelMode!,
        if (profanityFilter != null) 'profanityFilter': profanityFilter!,
      };
}

/// Configuration options for the output(s) of recognition.
class RecognitionOutputConfig {
  /// If this message is populated, recognition results are written to the
  /// provided Google Cloud Storage URI.
  GcsOutputConfig? gcsOutputConfig;

  /// If this message is populated, recognition results are provided in the
  /// BatchRecognizeResponse message of the Operation when completed.
  ///
  /// This is only supported when calling BatchRecognize with just one audio
  /// file.
  InlineOutputConfig? inlineResponseConfig;

  /// Configuration for the format of the results stored to `output`.
  ///
  /// If unspecified transcripts will be written in the `NATIVE` format only.
  ///
  /// Optional.
  OutputFormatConfig? outputFormatConfig;

  RecognitionOutputConfig({
    this.gcsOutputConfig,
    this.inlineResponseConfig,
    this.outputFormatConfig,
  });

  RecognitionOutputConfig.fromJson(core.Map json_)
      : this(
          gcsOutputConfig: json_.containsKey('gcsOutputConfig')
              ? GcsOutputConfig.fromJson(json_['gcsOutputConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inlineResponseConfig: json_.containsKey('inlineResponseConfig')
              ? InlineOutputConfig.fromJson(json_['inlineResponseConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          outputFormatConfig: json_.containsKey('outputFormatConfig')
              ? OutputFormatConfig.fromJson(json_['outputFormatConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsOutputConfig != null) 'gcsOutputConfig': gcsOutputConfig!,
        if (inlineResponseConfig != null)
          'inlineResponseConfig': inlineResponseConfig!,
        if (outputFormatConfig != null)
          'outputFormatConfig': outputFormatConfig!,
      };
}

/// Metadata about the recognition request and response.
///
/// Next ID: 10
class RecognitionResponseMetadata {
  /// When available, billed audio seconds for the corresponding request.
  core.String? totalBilledDuration;

  RecognitionResponseMetadata({
    this.totalBilledDuration,
  });

  RecognitionResponseMetadata.fromJson(core.Map json_)
      : this(
          totalBilledDuration: json_.containsKey('totalBilledDuration')
              ? json_['totalBilledDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalBilledDuration != null)
          'totalBilledDuration': totalBilledDuration!,
      };
}

/// Request message for the Recognize method.
///
/// Either `content` or `uri` must be supplied. Supplying both or neither
/// returns INVALID_ARGUMENT. See
/// [content limits](https://cloud.google.com/speech-to-text/quotas#content).
class RecognizeRequest {
  /// Features and audio metadata to use for the Automatic Speech Recognition.
  ///
  /// This field in combination with the config_mask field can be used to
  /// override parts of the default_recognition_config of the Recognizer
  /// resource.
  RecognitionConfig? config;

  /// The list of fields in config that override the values in the
  /// default_recognition_config of the recognizer during this recognition
  /// request.
  ///
  /// If no mask is provided, all non-default valued fields in config override
  /// the values in the recognizer for this recognition request. If a mask is
  /// provided, only the fields listed in the mask override the config in the
  /// recognizer for this recognition request. If a wildcard (`*`) is provided,
  /// config completely overrides and replaces the config in the recognizer for
  /// this recognition request.
  core.String? configMask;

  /// The audio data bytes encoded as specified in RecognitionConfig.
  ///
  /// As with all bytes fields, proto buffers use a pure binary representation,
  /// whereas JSON representations use base64.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// URI that points to a file that contains audio data bytes as specified in
  /// RecognitionConfig.
  ///
  /// The file must not be compressed (for example, gzip). Currently, only
  /// Google Cloud Storage URIs are supported, which must be specified in the
  /// following format: `gs://bucket_name/object_name` (other URI formats return
  /// INVALID_ARGUMENT). For more information, see
  /// [Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  core.String? uri;

  RecognizeRequest({
    this.config,
    this.configMask,
    this.content,
    this.uri,
  });

  RecognizeRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? RecognitionConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          configMask: json_.containsKey('configMask')
              ? json_['configMask'] as core.String
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (configMask != null) 'configMask': configMask!,
        if (content != null) 'content': content!,
        if (uri != null) 'uri': uri!,
      };
}

/// Response message for the Recognize method.
class RecognizeResponse {
  /// Metadata about the recognition.
  RecognitionResponseMetadata? metadata;

  /// Sequential list of transcription results corresponding to sequential
  /// portions of audio.
  core.List<SpeechRecognitionResult>? results;

  RecognizeResponse({
    this.metadata,
    this.results,
  });

  RecognizeResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? RecognitionResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => SpeechRecognitionResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (results != null) 'results': results!,
      };
}

/// A Recognizer message.
///
/// Stores recognition configuration and metadata.
class Recognizer {
  /// Allows users to store small amounts of arbitrary data.
  ///
  /// Both the key and the value must be 63 characters or less each. At most 100
  /// annotations.
  core.Map<core.String, core.String>? annotations;

  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Default configuration to use for requests with this Recognizer.
  ///
  /// This can be overwritten by inline configuration in the
  /// RecognizeRequest.config field.
  RecognitionConfig? defaultRecognitionConfig;

  /// The time at which this Recognizer was requested for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-settable, human-readable name for the Recognizer.
  ///
  /// Must be 63 characters or less.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The time at which this Recognizer will be purged.
  ///
  /// Output only.
  core.String? expireTime;

  /// The
  /// [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys)
  /// with which the Recognizer is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Output only.
  core.String? kmsKeyName;

  /// The
  /// [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions)
  /// with which the Recognizer is encrypted.
  ///
  /// The expected format is
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  ///
  /// Output only.
  core.String? kmsKeyVersionName;

  /// This field is now deprecated.
  ///
  /// Prefer the `language_codes` field in the `RecognitionConfig` message. The
  /// language of the supplied audio as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Supported languages for each model are listed in the
  /// [Table of Supported Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  /// If additional languages are provided, recognition result will contain
  /// recognition in the most likely language detected. The recognition result
  /// will include the language tag of the language detected in the audio. When
  /// you create or update a Recognizer, these values are stored in normalized
  /// BCP-47 form. For example, "en-us" is stored as "en-US".
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? languageCodes;

  /// This field is now deprecated.
  ///
  /// Prefer the `model` field in the `RecognitionConfig` message. Which model
  /// to use for recognition requests. Select the model best suited to your
  /// domain to get best results. Guidance for choosing which model to use can
  /// be found in the
  /// [Transcription Models Documentation](https://cloud.google.com/speech-to-text/v2/docs/transcription-model)
  /// and the models supported in each region can be found in the
  /// [Table Of Supported Models](https://cloud.google.com/speech-to-text/v2/docs/speech-to-text-supported-languages).
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? model;

  /// Identifier.
  ///
  /// The resource name of the Recognizer. Format:
  /// `projects/{project}/locations/{location}/recognizers/{recognizer}`.
  ///
  /// Output only.
  core.String? name;

  /// Whether or not this Recognizer is in the process of being updated.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The Recognizer lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACTIVE" : The Recognizer is active and ready for use.
  /// - "DELETED" : This Recognizer has been deleted.
  core.String? state;

  /// System-assigned unique identifier for the Recognizer.
  ///
  /// Output only.
  core.String? uid;

  /// The most recent time this Recognizer was modified.
  ///
  /// Output only.
  core.String? updateTime;

  Recognizer({
    this.annotations,
    this.createTime,
    this.defaultRecognitionConfig,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.expireTime,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.languageCodes,
    this.model,
    this.name,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

  Recognizer.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          defaultRecognitionConfig:
              json_.containsKey('defaultRecognitionConfig')
                  ? RecognitionConfig.fromJson(json_['defaultRecognitionConfig']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
          languageCodes: json_.containsKey('languageCodes')
              ? (json_['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (defaultRecognitionConfig != null)
          'defaultRecognitionConfig': defaultRecognitionConfig!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
        if (languageCodes != null) 'languageCodes': languageCodes!,
        if (model != null) 'model': model!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Configuration to enable speaker diarization.
class SpeakerDiarizationConfig {
  /// Maximum number of speakers in the conversation.
  ///
  /// Valid values are: 1-6. Must be \>= `min_speaker_count`. This range gives
  /// you more flexibility by allowing the system to automatically determine the
  /// correct number of speakers.
  ///
  /// Required.
  core.int? maxSpeakerCount;

  /// Minimum number of speakers in the conversation.
  ///
  /// This range gives you more flexibility by allowing the system to
  /// automatically determine the correct number of speakers. To fix the number
  /// of speakers detected in the audio, set `min_speaker_count` =
  /// `max_speaker_count`.
  ///
  /// Required.
  core.int? minSpeakerCount;

  SpeakerDiarizationConfig({
    this.maxSpeakerCount,
    this.minSpeakerCount,
  });

  SpeakerDiarizationConfig.fromJson(core.Map json_)
      : this(
          maxSpeakerCount: json_.containsKey('maxSpeakerCount')
              ? json_['maxSpeakerCount'] as core.int
              : null,
          minSpeakerCount: json_.containsKey('minSpeakerCount')
              ? json_['minSpeakerCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxSpeakerCount != null) 'maxSpeakerCount': maxSpeakerCount!,
        if (minSpeakerCount != null) 'minSpeakerCount': minSpeakerCount!,
      };
}

/// Provides "hints" to the speech recognizer to favor specific words and
/// phrases in the results.
///
/// PhraseSets can be specified as an inline resource, or a reference to an
/// existing PhraseSet resource.
class SpeechAdaptation {
  /// A list of inline CustomClasses.
  ///
  /// Existing CustomClass resources can be referenced directly in a PhraseSet.
  core.List<CustomClass>? customClasses;

  /// A list of inline or referenced PhraseSets.
  core.List<AdaptationPhraseSet>? phraseSets;

  SpeechAdaptation({
    this.customClasses,
    this.phraseSets,
  });

  SpeechAdaptation.fromJson(core.Map json_)
      : this(
          customClasses: json_.containsKey('customClasses')
              ? (json_['customClasses'] as core.List)
                  .map((value) => CustomClass.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          phraseSets: json_.containsKey('phraseSets')
              ? (json_['phraseSets'] as core.List)
                  .map((value) => AdaptationPhraseSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customClasses != null) 'customClasses': customClasses!,
        if (phraseSets != null) 'phraseSets': phraseSets!,
      };
}

/// Alternative hypotheses (a.k.a. n-best list).
class SpeechRecognitionAlternative {
  /// The confidence estimate between 0.0 and 1.0.
  ///
  /// A higher number indicates an estimated greater likelihood that the
  /// recognized words are correct. This field is set only for the top
  /// alternative of a non-streaming result or, of a streaming result where
  /// is_final is set to `true`. This field is not guaranteed to be accurate and
  /// users should not rely on it to be always provided. The default of 0.0 is a
  /// sentinel value indicating `confidence` was not set.
  core.double? confidence;

  /// Transcript text representing the words that the user spoke.
  core.String? transcript;

  /// A list of word-specific information for each recognized word.
  ///
  /// When the SpeakerDiarizationConfig is set, you will see all the words from
  /// the beginning of the audio.
  core.List<WordInfo>? words;

  SpeechRecognitionAlternative({
    this.confidence,
    this.transcript,
    this.words,
  });

  SpeechRecognitionAlternative.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          transcript: json_.containsKey('transcript')
              ? json_['transcript'] as core.String
              : null,
          words: json_.containsKey('words')
              ? (json_['words'] as core.List)
                  .map((value) => WordInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (transcript != null) 'transcript': transcript!,
        if (words != null) 'words': words!,
      };
}

/// A speech recognition result corresponding to a portion of the audio.
class SpeechRecognitionResult {
  /// May contain one or more recognition hypotheses.
  ///
  /// These alternatives are ordered in terms of accuracy, with the top (first)
  /// alternative being the most probable, as ranked by the recognizer.
  core.List<SpeechRecognitionAlternative>? alternatives;

  /// For multi-channel audio, this is the channel number corresponding to the
  /// recognized result for the audio from that channel.
  ///
  /// For `audio_channel_count` = `N`, its output values can range from `1` to
  /// `N`.
  core.int? channelTag;

  /// The \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag
  /// of the language in this result.
  ///
  /// This language code was detected to have the most likelihood of being
  /// spoken in the audio.
  ///
  /// Output only.
  core.String? languageCode;

  /// Time offset of the end of this result relative to the beginning of the
  /// audio.
  core.String? resultEndOffset;

  SpeechRecognitionResult({
    this.alternatives,
    this.channelTag,
    this.languageCode,
    this.resultEndOffset,
  });

  SpeechRecognitionResult.fromJson(core.Map json_)
      : this(
          alternatives: json_.containsKey('alternatives')
              ? (json_['alternatives'] as core.List)
                  .map((value) => SpeechRecognitionAlternative.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          channelTag: json_.containsKey('channelTag')
              ? json_['channelTag'] as core.int
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          resultEndOffset: json_.containsKey('resultEndOffset')
              ? json_['resultEndOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternatives != null) 'alternatives': alternatives!,
        if (channelTag != null) 'channelTag': channelTag!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (resultEndOffset != null) 'resultEndOffset': resultEndOffset!,
      };
}

/// Output configurations
/// [SubRip Text](https://www.matroska.org/technical/subtitles.html#srt-subtitles)
/// formatted subtitle file.
typedef SrtOutputFileFormatConfig = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Transcription normalization configuration.
///
/// Use transcription normalization to automatically replace parts of the
/// transcript with phrases of your choosing. For StreamingRecognize, this
/// normalization only applies to stable partial transcripts (stability \> 0.8)
/// and final transcripts.
class TranscriptNormalization {
  /// A list of replacement entries.
  ///
  /// We will perform replacement with one entry at a time. For example, the
  /// second entry in \["cat" =\> "dog", "mountain cat" =\> "mountain dog"\]
  /// will never be applied because we will always process the first entry
  /// before it. At most 100 entries.
  core.List<Entry>? entries;

  TranscriptNormalization({
    this.entries,
  });

  TranscriptNormalization.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => Entry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Translation configuration.
///
/// Use to translate the given audio into text for the desired language.
class TranslationConfig {
  /// The language code to translate to.
  ///
  /// Required.
  core.String? targetLanguage;

  TranslationConfig({
    this.targetLanguage,
  });

  TranslationConfig.fromJson(core.Map json_)
      : this(
          targetLanguage: json_.containsKey('targetLanguage')
              ? json_['targetLanguage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetLanguage != null) 'targetLanguage': targetLanguage!,
      };
}

/// Request message for the UndeleteCustomClass method.
class UndeleteCustomClassRequest {
  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  core.String? etag;

  /// The name of the CustomClass to undelete.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/customClasses/{custom_class}`
  ///
  /// Required.
  core.String? name;

  /// If set, validate the request and preview the undeleted CustomClass, but do
  /// not actually undelete it.
  core.bool? validateOnly;

  UndeleteCustomClassRequest({
    this.etag,
    this.name,
    this.validateOnly,
  });

  UndeleteCustomClassRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Request message for the UndeletePhraseSet method.
class UndeletePhraseSetRequest {
  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  core.String? etag;

  /// The name of the PhraseSet to undelete.
  ///
  /// Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
  ///
  /// Required.
  core.String? name;

  /// If set, validate the request and preview the undeleted PhraseSet, but do
  /// not actually undelete it.
  core.bool? validateOnly;

  UndeletePhraseSetRequest({
    this.etag,
    this.name,
    this.validateOnly,
  });

  UndeletePhraseSetRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Request message for the UndeleteRecognizer method.
class UndeleteRecognizerRequest {
  /// This checksum is computed by the server based on the value of other
  /// fields.
  ///
  /// This may be sent on update, undelete, and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  core.String? etag;

  /// The name of the Recognizer to undelete.
  ///
  /// Format: `projects/{project}/locations/{location}/recognizers/{recognizer}`
  ///
  /// Required.
  core.String? name;

  /// If set, validate the request and preview the undeleted Recognizer, but do
  /// not actually undelete it.
  core.bool? validateOnly;

  UndeleteRecognizerRequest({
    this.etag,
    this.name,
    this.validateOnly,
  });

  UndeleteRecognizerRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Output configurations for [WebVTT](https://www.w3.org/TR/webvtt1/) formatted
/// subtitle file.
typedef VttOutputFileFormatConfig = $Empty;

/// Word-specific information for recognized words.
class WordInfo {
  /// The confidence estimate between 0.0 and 1.0.
  ///
  /// A higher number indicates an estimated greater likelihood that the
  /// recognized words are correct. This field is set only for the top
  /// alternative of a non-streaming result or, of a streaming result where
  /// is_final is set to `true`. This field is not guaranteed to be accurate and
  /// users should not rely on it to be always provided. The default of 0.0 is a
  /// sentinel value indicating `confidence` was not set.
  core.double? confidence;

  /// Time offset relative to the beginning of the audio, and corresponding to
  /// the end of the spoken word.
  ///
  /// This field is only set if enable_word_time_offsets is `true` and only in
  /// the top hypothesis. This is an experimental feature and the accuracy of
  /// the time offset can vary.
  core.String? endOffset;

  /// A distinct label is assigned for every speaker within the audio.
  ///
  /// This field specifies which one of those speakers was detected to have
  /// spoken this word. `speaker_label` is set if SpeakerDiarizationConfig is
  /// given and only in the top alternative.
  core.String? speakerLabel;

  /// Time offset relative to the beginning of the audio, and corresponding to
  /// the start of the spoken word.
  ///
  /// This field is only set if enable_word_time_offsets is `true` and only in
  /// the top hypothesis. This is an experimental feature and the accuracy of
  /// the time offset can vary.
  core.String? startOffset;

  /// The word corresponding to this set of information.
  core.String? word;

  WordInfo({
    this.confidence,
    this.endOffset,
    this.speakerLabel,
    this.startOffset,
    this.word,
  });

  WordInfo.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          endOffset: json_.containsKey('endOffset')
              ? json_['endOffset'] as core.String
              : null,
          speakerLabel: json_.containsKey('speakerLabel')
              ? json_['speakerLabel'] as core.String
              : null,
          startOffset: json_.containsKey('startOffset')
              ? json_['startOffset'] as core.String
              : null,
          word: json_.containsKey('word') ? json_['word'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (endOffset != null) 'endOffset': endOffset!,
        if (speakerLabel != null) 'speakerLabel': speakerLabel!,
        if (startOffset != null) 'startOffset': startOffset!,
        if (word != null) 'word': word!,
      };
}
