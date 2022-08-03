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

/// Cloud Translation API - v3
///
/// Integrates text translation into your website or application.
///
/// For more information, see
/// <https://cloud.google.com/translate/docs/quickstarts>
///
/// Create an instance of [TranslateApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGlossariesResource]
///     - [ProjectsLocationsOperationsResource]
library translate.v3;

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

/// Integrates text translation into your website or application.
class TranslateApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Translate text from one language to another using Google Translate
  static const cloudTranslationScope =
      'https://www.googleapis.com/auth/cloud-translation';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  TranslateApi(http.Client client,
      {core.String rootUrl = 'https://translation.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Detects the language of text within a request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format:
  /// `projects/{project-number-or-id}/locations/{location-id}` or
  /// `projects/{project-number-or-id}`. For global calls, use
  /// `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Only models within the same region (has
  /// same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error
  /// is returned.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetectLanguageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetectLanguageResponse> detectLanguage(
    DetectLanguageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':detectLanguage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DetectLanguageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of supported languages for translation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format: `projects/{project-number-or-id}` or
  /// `projects/{project-number-or-id}/locations/{location-id}`. For global
  /// calls, use `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Non-global location is required for
  /// AutoML models. Only models within the same region (have same location-id)
  /// can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [displayLanguageCode] - Optional. The language to use to return localized,
  /// human readable names of supported languages. If missing, then display
  /// names are not returned in a response.
  ///
  /// [model] - Optional. Get supported languages of this model. The format
  /// depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// Returns languages supported by the specified model. If missing, we get
  /// supported languages of Google general NMT model.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SupportedLanguages].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SupportedLanguages> getSupportedLanguages(
    core.String parent, {
    core.String? displayLanguageCode,
    core.String? model,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (displayLanguageCode != null)
        'displayLanguageCode': [displayLanguageCode],
      if (model != null) 'model': [model],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/supportedLanguages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SupportedLanguages.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Translates input text and returns translated text.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format: `projects/{project-number-or-id}` or
  /// `projects/{project-number-or-id}/locations/{location-id}`. For global
  /// calls, use `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Non-global location is required for
  /// requests using AutoML models or custom glossaries. Models and glossaries
  /// must be within the same region (have same location-id), otherwise an
  /// INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranslateTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranslateTextResponse> translateText(
    TranslateTextRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':translateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TranslateTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlossariesResource get glossaries =>
      ProjectsLocationsGlossariesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Translates a large volume of document in asynchronous batch mode.
  ///
  /// This function provides real-time output as the inputs are being processed.
  /// If caller cancels a request, the partial results (for an input file, it's
  /// all or nothing) may still be available on the specified output location.
  /// This call returns immediately and you can use
  /// google.longrunning.Operation.name to poll the status of the call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Location to make a regional call. Format:
  /// `projects/{project-number-or-id}/locations/{location-id}`. The `global`
  /// location is not supported for batch translation. Only AutoML Translation
  /// models or glossaries within the same region (have the same location-id)
  /// can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> batchTranslateDocument(
    BatchTranslateDocumentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$parent') + ':batchTranslateDocument';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Translates a large volume of text in asynchronous batch mode.
  ///
  /// This function provides real-time output as the inputs are being processed.
  /// If caller cancels a request, the partial results (for an input file, it's
  /// all or nothing) may still be available on the specified output location.
  /// This call returns immediately and you can use
  /// google.longrunning.Operation.name to poll the status of the call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Location to make a call. Must refer to a caller's
  /// project. Format:
  /// `projects/{project-number-or-id}/locations/{location-id}`. The `global`
  /// location is not supported for batch translation. Only AutoML Translation
  /// models or glossaries within the same region (have the same location-id)
  /// can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> batchTranslateText(
    BatchTranslateTextRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':batchTranslateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Detects the language of text within a request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format:
  /// `projects/{project-number-or-id}/locations/{location-id}` or
  /// `projects/{project-number-or-id}`. For global calls, use
  /// `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Only models within the same region (has
  /// same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error
  /// is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetectLanguageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetectLanguageResponse> detectLanguage(
    DetectLanguageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':detectLanguage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DetectLanguageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of supported languages for translation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format: `projects/{project-number-or-id}` or
  /// `projects/{project-number-or-id}/locations/{location-id}`. For global
  /// calls, use `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Non-global location is required for
  /// AutoML models. Only models within the same region (have same location-id)
  /// can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [displayLanguageCode] - Optional. The language to use to return localized,
  /// human readable names of supported languages. If missing, then display
  /// names are not returned in a response.
  ///
  /// [model] - Optional. Get supported languages of this model. The format
  /// depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// Returns languages supported by the specified model. If missing, we get
  /// supported languages of Google general NMT model.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SupportedLanguages].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SupportedLanguages> getSupportedLanguages(
    core.String parent, {
    core.String? displayLanguageCode,
    core.String? model,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (displayLanguageCode != null)
        'displayLanguageCode': [displayLanguageCode],
      if (model != null) 'model': [model],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/supportedLanguages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SupportedLanguages.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Translates documents in synchronous mode.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Location to make a regional call. Format:
  /// `projects/{project-number-or-id}/locations/{location-id}`. For global
  /// calls, use `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Non-global location is required for
  /// requests using AutoML models or custom glossaries. Models and glossaries
  /// must be within the same region (have the same location-id), otherwise an
  /// INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranslateDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranslateDocumentResponse> translateDocument(
    TranslateDocumentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':translateDocument';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TranslateDocumentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Translates input text and returns translated text.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project or location to make a call. Must refer to a
  /// caller's project. Format: `projects/{project-number-or-id}` or
  /// `projects/{project-number-or-id}/locations/{location-id}`. For global
  /// calls, use `projects/{project-number-or-id}/locations/global` or
  /// `projects/{project-number-or-id}`. Non-global location is required for
  /// requests using AutoML models or custom glossaries. Models and glossaries
  /// must be within the same region (have same location-id), otherwise an
  /// INVALID_ARGUMENT (400) error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranslateTextResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranslateTextResponse> translateText(
    TranslateTextRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + ':translateText';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TranslateTextResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlossariesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlossariesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a glossary and returns the long-running operation.
  ///
  /// Returns NOT_FOUND, if the project doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    Glossary request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/glossaries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a glossary, or cancels glossary construction if the glossary isn't
  /// created yet.
  ///
  /// Returns NOT_FOUND, if the glossary doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the glossary to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/glossaries/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a glossary.
  ///
  /// Returns NOT_FOUND, if the glossary doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the glossary to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/glossaries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Glossary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Glossary> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Glossary.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists glossaries in a project.
  ///
  /// Returns NOT_FOUND, if the project doesn't exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project from which to list all of the
  /// glossaries.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter specifying constraints of a list operation.
  /// Specify the constraint by the format of "key=value", where key must be
  /// "src" or "tgt", and the value must be a valid language code. For multiple
  /// restrictions, concatenate them by "AND" (uppercase only), such as:
  /// "src=en-US AND tgt=zh-CN". Notice that the exact match is used here, which
  /// means using 'en-US' and 'en' can lead to different results, which depends
  /// on the language code you used when you create the glossary. For the
  /// unidirectional glossaries, the "src" and "tgt" add restrictions on the
  /// source and target language code separately. For the equivalent term set
  /// glossaries, the "src" and/or "tgt" add restrictions on the term set. For
  /// example: "src=en-US AND tgt=zh-CN" will only pick the unidirectional
  /// glossaries which exactly match the source language code as "en-US" and the
  /// target language code "zh-CN", but all equivalent term set glossaries which
  /// contain "en-US" and "zh-CN" in their language set will be picked. If
  /// missing, no filtering is performed.
  ///
  /// [pageSize] - Optional. Requested page size. The server may return fewer
  /// glossaries than requested. If unspecified, the server picks an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return. Typically, this is the value of
  /// \[ListGlossariesResponse.next_page_token\] returned from the previous call
  /// to `ListGlossaries` method. The first page is returned if `page_token`is
  /// empty or missing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGlossariesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGlossariesResponse> list(
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

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/glossaries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGlossariesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

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
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
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
  async.Future<Operation> wait(
    WaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':wait';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Input configuration for BatchTranslateDocument request.
class BatchDocumentInputConfig {
  /// Google Cloud Storage location for the source input.
  ///
  /// This can be a single file (for example,
  /// `gs://translation-test/input.docx`) or a wildcard (for example,
  /// `gs://translation-test / * `). File mime type is determined based on
  /// extension. Supported mime type includes: - `pdf`, application/pdf -
  /// `docx`,
  /// application/vnd.openxmlformats-officedocument.wordprocessingml.document -
  /// `pptx`,
  /// application/vnd.openxmlformats-officedocument.presentationml.presentation
  /// - `xlsx`,
  /// application/vnd.openxmlformats-officedocument.spreadsheetml.sheet The max
  /// file size to support for `.docx`, `.pptx` and `.xlsx` is 100MB. The max
  /// file size to support for `.pdf` is 1GB and the max page limit is 1000
  /// pages. The max file size to support for all input documents is 1GB.
  GcsSource? gcsSource;

  BatchDocumentInputConfig({
    this.gcsSource,
  });

  BatchDocumentInputConfig.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Output configuration for BatchTranslateDocument request.
class BatchDocumentOutputConfig {
  /// Google Cloud Storage destination for output content.
  ///
  /// For every single input document (for example, gs://a/b/c.\[extension\]),
  /// we generate at most 2 * n output files. (n is the # of
  /// target_language_codes in the BatchTranslateDocumentRequest). While the
  /// input documents are being processed, we write/update an index file
  /// `index.csv` under `gcs_destination.output_uri_prefix` (for example,
  /// gs://translation_output/index.csv) The index file is generated/updated as
  /// new files are being translated. The format is:
  /// input_document,target_language_code,translation_output,error_output,
  /// glossary_translation_output,glossary_error_output `input_document` is one
  /// file we matched using gcs_source.input_uri. `target_language_code` is
  /// provided in the request. `translation_output` contains the translations.
  /// (details provided below) `error_output` contains the error message during
  /// processing of the file. Both translations_file and errors_file could be
  /// empty strings if we have no content to output.
  /// `glossary_translation_output` and `glossary_error_output` are the
  /// translated output/error when we apply glossaries. They could also be empty
  /// if we have no content to output. Once a row is present in index.csv, the
  /// input/output matching never changes. Callers should also expect all the
  /// content in input_file are processed and ready to be consumed (that is, no
  /// partial output file is written). Since index.csv will be keeping updated
  /// during the process, please make sure there is no custom retention policy
  /// applied on the output bucket that may avoid file updating.
  /// (https://cloud.google.com/storage/docs/bucket-lock?hl=en#retention-policy)
  /// The naming format of translation output files follows (for target language
  /// code \[trg\]): `translation_output`:
  /// gs://translation_output/a_b_c_\[trg\]_translation.\[extension\]
  /// `glossary_translation_output`:
  /// gs://translation_test/a_b_c_\[trg\]_glossary_translation.\[extension\] The
  /// output document will maintain the same file format as the input document.
  /// The naming format of error output files follows (for target language code
  /// \[trg\]): `error_output`: gs://translation_test/a_b_c_\[trg\]_errors.txt
  /// `glossary_error_output`:
  /// gs://translation_test/a_b_c_\[trg\]_glossary_translation.txt The error
  /// output is a txt file containing error details.
  GcsDestination? gcsDestination;

  BatchDocumentOutputConfig({
    this.gcsDestination,
  });

  BatchDocumentOutputConfig.fromJson(core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// The BatchTranslateDocument request.
class BatchTranslateDocumentRequest {
  /// Optional.
  core.Map<core.String, core.String>? formatConversions;

  /// Glossaries to be applied.
  ///
  /// It's keyed by target language code.
  ///
  /// Optional.
  core.Map<core.String, TranslateTextGlossaryConfig>? glossaries;

  /// Input configurations.
  ///
  /// The total number of files matched should be \<= 100. The total content
  /// size to translate should be \<= 100M Unicode codepoints. The files must
  /// use UTF-8 encoding.
  ///
  /// Required.
  core.List<BatchDocumentInputConfig>? inputConfigs;

  /// The models to use for translation.
  ///
  /// Map's key is target language code. Map's value is the model name. Value
  /// can be a built-in general model, or an AutoML Translation model. The value
  /// format depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// If the map is empty or a specific model is not requested for a language
  /// pair, then default google model (nmt) is used.
  ///
  /// Optional.
  core.Map<core.String, core.String>? models;

  /// Output configuration.
  ///
  /// If 2 input configs match to the same file (that is, same input path), we
  /// don't generate output for duplicate inputs.
  ///
  /// Required.
  BatchDocumentOutputConfig? outputConfig;

  /// The BCP-47 language code of the input document if known, for example,
  /// "en-US" or "sr-Latn".
  ///
  /// Supported language codes are listed in Language Support
  /// (https://cloud.google.com/translate/docs/languages).
  ///
  /// Required.
  core.String? sourceLanguageCode;

  /// The BCP-47 language code to use for translation of the input document.
  ///
  /// Specify up to 10 language codes here.
  ///
  /// Required.
  core.List<core.String>? targetLanguageCodes;

  BatchTranslateDocumentRequest({
    this.formatConversions,
    this.glossaries,
    this.inputConfigs,
    this.models,
    this.outputConfig,
    this.sourceLanguageCode,
    this.targetLanguageCodes,
  });

  BatchTranslateDocumentRequest.fromJson(core.Map json_)
      : this(
          formatConversions: json_.containsKey('formatConversions')
              ? (json_['formatConversions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          glossaries: json_.containsKey('glossaries')
              ? (json_['glossaries'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    TranslateTextGlossaryConfig.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          inputConfigs: json_.containsKey('inputConfigs')
              ? (json_['inputConfigs'] as core.List)
                  .map((value) => BatchDocumentInputConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          models: json_.containsKey('models')
              ? (json_['models'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? BatchDocumentOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceLanguageCode: json_.containsKey('sourceLanguageCode')
              ? json_['sourceLanguageCode'] as core.String
              : null,
          targetLanguageCodes: json_.containsKey('targetLanguageCodes')
              ? (json_['targetLanguageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formatConversions != null) 'formatConversions': formatConversions!,
        if (glossaries != null) 'glossaries': glossaries!,
        if (inputConfigs != null) 'inputConfigs': inputConfigs!,
        if (models != null) 'models': models!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (sourceLanguageCode != null)
          'sourceLanguageCode': sourceLanguageCode!,
        if (targetLanguageCodes != null)
          'targetLanguageCodes': targetLanguageCodes!,
      };
}

/// The batch translation request.
class BatchTranslateTextRequest {
  /// Glossaries to be applied for translation.
  ///
  /// It's keyed by target language code.
  ///
  /// Optional.
  core.Map<core.String, TranslateTextGlossaryConfig>? glossaries;

  /// Input configurations.
  ///
  /// The total number of files matched should be \<= 100. The total content
  /// size should be \<= 100M Unicode codepoints. The files must use UTF-8
  /// encoding.
  ///
  /// Required.
  core.List<InputConfig>? inputConfigs;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter. See
  /// https://cloud.google.com/translate/docs/advanced/labels for more
  /// information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The models to use for translation.
  ///
  /// Map's key is target language code. Map's value is model name. Value can be
  /// a built-in general model, or an AutoML Translation model. The value format
  /// depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// If the map is empty or a specific model is not requested for a language
  /// pair, then default google model (nmt) is used.
  ///
  /// Optional.
  core.Map<core.String, core.String>? models;

  /// Output configuration.
  ///
  /// If 2 input configs match to the same file (that is, same input path), we
  /// don't generate output for duplicate inputs.
  ///
  /// Required.
  OutputConfig? outputConfig;

  /// Source language code.
  ///
  /// Required.
  core.String? sourceLanguageCode;

  /// Specify up to 10 language codes here.
  ///
  /// Required.
  core.List<core.String>? targetLanguageCodes;

  BatchTranslateTextRequest({
    this.glossaries,
    this.inputConfigs,
    this.labels,
    this.models,
    this.outputConfig,
    this.sourceLanguageCode,
    this.targetLanguageCodes,
  });

  BatchTranslateTextRequest.fromJson(core.Map json_)
      : this(
          glossaries: json_.containsKey('glossaries')
              ? (json_['glossaries'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    TranslateTextGlossaryConfig.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          inputConfigs: json_.containsKey('inputConfigs')
              ? (json_['inputConfigs'] as core.List)
                  .map((value) => InputConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          models: json_.containsKey('models')
              ? (json_['models'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceLanguageCode: json_.containsKey('sourceLanguageCode')
              ? json_['sourceLanguageCode'] as core.String
              : null,
          targetLanguageCodes: json_.containsKey('targetLanguageCodes')
              ? (json_['targetLanguageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glossaries != null) 'glossaries': glossaries!,
        if (inputConfigs != null) 'inputConfigs': inputConfigs!,
        if (labels != null) 'labels': labels!,
        if (models != null) 'models': models!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (sourceLanguageCode != null)
          'sourceLanguageCode': sourceLanguageCode!,
        if (targetLanguageCodes != null)
          'targetLanguageCodes': targetLanguageCodes!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The request message for language detection.
class DetectLanguageRequest {
  /// The content of the input stored as a string.
  core.String? content;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter. See
  /// https://cloud.google.com/translate/docs/advanced/labels for more
  /// information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The format of the source text, for example, "text/html", "text/plain".
  ///
  /// If left blank, the MIME type defaults to "text/html".
  ///
  /// Optional.
  core.String? mimeType;

  /// The language detection model to be used.
  ///
  /// Format:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/language-detection/{model-id}`
  /// Only one language detection model is currently supported:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/language-detection/default`.
  /// If not specified, the default model is used.
  ///
  /// Optional.
  core.String? model;

  DetectLanguageRequest({
    this.content,
    this.labels,
    this.mimeType,
    this.model,
  });

  DetectLanguageRequest.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (labels != null) 'labels': labels!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (model != null) 'model': model!,
      };
}

/// The response message for language detection.
class DetectLanguageResponse {
  /// The most probable language detected by the Translation API.
  ///
  /// For each request, the Translation API will always return only one result.
  core.List<DetectedLanguage>? languages;

  DetectLanguageResponse({
    this.languages,
  });

  DetectLanguageResponse.fromJson(core.Map json_)
      : this(
          languages: json_.containsKey('languages')
              ? (json_['languages'] as core.List)
                  .map((value) => DetectedLanguage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languages != null) 'languages': languages!,
      };
}

/// The response message for language detection.
class DetectedLanguage {
  /// The confidence of the detection result for this language.
  core.double? confidence;

  /// The BCP-47 language code of source content in the request, detected
  /// automatically.
  core.String? languageCode;

  DetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  DetectedLanguage.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// A document translation request input config.
class DocumentInputConfig {
  /// Document's content represented as a stream of bytes.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Google Cloud Storage location.
  ///
  /// This must be a single file. For example:
  /// gs://example_bucket/example_file.pdf
  GcsSource? gcsSource;

  /// Specifies the input document's mime_type.
  ///
  /// If not specified it will be determined using the file extension for
  /// gcs_source provided files. For a file provided through bytes content the
  /// mime_type must be provided. Currently supported mime types are: -
  /// application/pdf -
  /// application/vnd.openxmlformats-officedocument.wordprocessingml.document -
  /// application/vnd.openxmlformats-officedocument.presentationml.presentation
  /// - application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
  core.String? mimeType;

  DocumentInputConfig({
    this.content,
    this.gcsSource,
    this.mimeType,
  });

  DocumentInputConfig.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A document translation request output config.
class DocumentOutputConfig {
  /// Google Cloud Storage destination for the translation output, e.g.,
  /// `gs://my_bucket/my_directory/`.
  ///
  /// The destination directory provided does not have to be empty, but the
  /// bucket must exist. If a file with the same name as the output file already
  /// exists in the destination an error will be returned. For a
  /// DocumentInputConfig.contents provided document, the output file will have
  /// the name "output_\[trg\]_translations.\[ext\]", where - \[trg\]
  /// corresponds to the translated file's language code, - \[ext\] corresponds
  /// to the translated file's extension according to its mime type. For a
  /// DocumentInputConfig.gcs_uri provided document, the output file will have a
  /// name according to its URI. For example: an input file with URI:
  /// "gs://a/b/c.\[extension\]" stored in a gcs_destination bucket with name
  /// "my_bucket" will have an output URI:
  /// "gs://my_bucket/a_b_c_\[trg\]_translations.\[ext\]", where - \[trg\]
  /// corresponds to the translated file's language code, - \[ext\] corresponds
  /// to the translated file's extension according to its mime type. If the
  /// document was directly provided through the request, then the output
  /// document will have the format:
  /// "gs://my_bucket/translated_document_\[trg\]_translations.\[ext\], where -
  /// \[trg\] corresponds to the translated file's language code, - \[ext\]
  /// corresponds to the translated file's extension according to its mime type.
  /// If a glossary was provided, then the output URI for the glossary
  /// translation will be equal to the default output URI but have
  /// `glossary_translations` instead of `translations`. For the previous
  /// example, its glossary URI would be:
  /// "gs://my_bucket/a_b_c_\[trg\]_glossary_translations.\[ext\]". Thus the max
  /// number of output files will be 2 (Translated document, Glossary translated
  /// document). Callers should expect no partial outputs. If there is any error
  /// during document translation, no output will be stored in the Cloud Storage
  /// bucket.
  ///
  /// Optional.
  GcsDestination? gcsDestination;

  /// Specifies the translated document's mime_type.
  ///
  /// If not specified, the translated file's mime type will be the same as the
  /// input file's mime type. Currently only support the output mime type to be
  /// the same as input mime type. - application/pdf -
  /// application/vnd.openxmlformats-officedocument.wordprocessingml.document -
  /// application/vnd.openxmlformats-officedocument.presentationml.presentation
  /// - application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
  ///
  /// Optional.
  core.String? mimeType;

  DocumentOutputConfig({
    this.gcsDestination,
    this.mimeType,
  });

  DocumentOutputConfig.fromJson(core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A translated document message.
class DocumentTranslation {
  /// The array of translated documents.
  ///
  /// It is expected to be size 1 for now. We may produce multiple translated
  /// documents in the future for other type of file formats.
  core.List<core.String>? byteStreamOutputs;

  /// The detected language for the input document.
  ///
  /// If the user did not provide the source language for the input document,
  /// this field will have the language code automatically detected. If the
  /// source language was passed, auto-detection of the language does not occur
  /// and this field is empty.
  core.String? detectedLanguageCode;

  /// The translated document's mime type.
  core.String? mimeType;

  DocumentTranslation({
    this.byteStreamOutputs,
    this.detectedLanguageCode,
    this.mimeType,
  });

  DocumentTranslation.fromJson(core.Map json_)
      : this(
          byteStreamOutputs: json_.containsKey('byteStreamOutputs')
              ? (json_['byteStreamOutputs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectedLanguageCode: json_.containsKey('detectedLanguageCode')
              ? json_['detectedLanguageCode'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteStreamOutputs != null) 'byteStreamOutputs': byteStreamOutputs!,
        if (detectedLanguageCode != null)
          'detectedLanguageCode': detectedLanguageCode!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The Google Cloud Storage location for the output content.
class GcsDestination {
  /// The bucket used in 'output_uri_prefix' must exist and there must be no
  /// files under 'output_uri_prefix'.
  ///
  /// 'output_uri_prefix' must end with "/" and start with "gs://". One
  /// 'output_uri_prefix' can only be used by one batch translation job at a
  /// time. Otherwise an INVALID_ARGUMENT (400) error is returned.
  ///
  /// Required.
  core.String? outputUriPrefix;

  GcsDestination({
    this.outputUriPrefix,
  });

  GcsDestination.fromJson(core.Map json_)
      : this(
          outputUriPrefix: json_.containsKey('outputUriPrefix')
              ? json_['outputUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputUriPrefix != null) 'outputUriPrefix': outputUriPrefix!,
      };
}

/// The Google Cloud Storage location for the input content.
class GcsSource {
  /// Source data URI.
  ///
  /// For example, `gs://my_bucket/my_object`.
  ///
  /// Required.
  core.String? inputUri;

  GcsSource({
    this.inputUri,
  });

  GcsSource.fromJson(core.Map json_)
      : this(
          inputUri: json_.containsKey('inputUri')
              ? json_['inputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputUri != null) 'inputUri': inputUri!,
      };
}

/// Represents a glossary built from user provided data.
class Glossary {
  /// When the glossary creation was finished.
  ///
  /// Output only.
  core.String? endTime;

  /// The number of entries defined in the glossary.
  ///
  /// Output only.
  core.int? entryCount;

  /// Provides examples to build the glossary from.
  ///
  /// Total glossary must not exceed 10M Unicode codepoints.
  ///
  /// Required.
  GlossaryInputConfig? inputConfig;

  /// Used with equivalent term set glossaries.
  LanguageCodesSet? languageCodesSet;

  /// Used with unidirectional glossaries.
  LanguageCodePair? languagePair;

  /// The resource name of the glossary.
  ///
  /// Glossary names have the form
  /// `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`.
  ///
  /// Required.
  core.String? name;

  /// When CreateGlossary was called.
  ///
  /// Output only.
  core.String? submitTime;

  Glossary({
    this.endTime,
    this.entryCount,
    this.inputConfig,
    this.languageCodesSet,
    this.languagePair,
    this.name,
    this.submitTime,
  });

  Glossary.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          entryCount: json_.containsKey('entryCount')
              ? json_['entryCount'] as core.int
              : null,
          inputConfig: json_.containsKey('inputConfig')
              ? GlossaryInputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCodesSet: json_.containsKey('languageCodesSet')
              ? LanguageCodesSet.fromJson(json_['languageCodesSet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          languagePair: json_.containsKey('languagePair')
              ? LanguageCodePair.fromJson(
                  json_['languagePair'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          submitTime: json_.containsKey('submitTime')
              ? json_['submitTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (entryCount != null) 'entryCount': entryCount!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (languageCodesSet != null) 'languageCodesSet': languageCodesSet!,
        if (languagePair != null) 'languagePair': languagePair!,
        if (name != null) 'name': name!,
        if (submitTime != null) 'submitTime': submitTime!,
      };
}

/// Input configuration for glossaries.
class GlossaryInputConfig {
  /// Google Cloud Storage location of glossary data.
  ///
  /// File format is determined based on the filename extension. API returns
  /// \[google.rpc.Code.INVALID_ARGUMENT\] for unsupported URI-s and file
  /// formats. Wildcards are not allowed. This must be a single file in one of
  /// the following formats: For unidirectional glossaries: - TSV/CSV
  /// (`.tsv`/`.csv`): 2 column file, tab- or comma-separated. The first column
  /// is source text. The second column is target text. The file must not
  /// contain headers. That is, the first row is data, not column names. - TMX
  /// (`.tmx`): TMX file with parallel data defining source/target term pairs.
  /// For equivalent term sets glossaries: - CSV (`.csv`): Multi-column CSV file
  /// defining equivalent glossary terms in multiple languages. See
  /// documentation for more information -
  /// [glossaries](https://cloud.google.com/translate/docs/advanced/glossary).
  ///
  /// Required.
  GcsSource? gcsSource;

  GlossaryInputConfig({
    this.gcsSource,
  });

  GlossaryInputConfig.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Input configuration for BatchTranslateText request.
class InputConfig {
  /// Google Cloud Storage location for the source input.
  ///
  /// This can be a single file (for example, `gs://translation-test/input.tsv`)
  /// or a wildcard (for example, `gs://translation-test / * `). If a file
  /// extension is `.tsv`, it can contain either one or two columns. The first
  /// column (optional) is the id of the text request. If the first column is
  /// missing, we use the row number (0-based) from the input file as the ID in
  /// the output file. The second column is the actual text to be translated. We
  /// recommend each row be \<= 10K Unicode codepoints, otherwise an error might
  /// be returned. Note that the input tsv must be RFC 4180 compliant. You could
  /// use https://github.com/Clever/csvlint to check potential formatting errors
  /// in your tsv file. csvlint --delimiter='\t' your_input_file.tsv The other
  /// supported file extensions are `.txt` or `.html`, which is treated as a
  /// single large chunk of text.
  ///
  /// Required.
  GcsSource? gcsSource;

  /// Can be "text/plain" or "text/html".
  ///
  /// For `.tsv`, "text/html" is used if mime_type is missing. For `.html`, this
  /// field must be "text/html" or empty. For `.txt`, this field must be
  /// "text/plain" or empty.
  ///
  /// Optional.
  core.String? mimeType;

  InputConfig({
    this.gcsSource,
    this.mimeType,
  });

  InputConfig.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Used with unidirectional glossaries.
class LanguageCodePair {
  /// The BCP-47 language code of the input text, for example, "en-US".
  ///
  /// Expected to be an exact match for GlossaryTerm.language_code.
  ///
  /// Required.
  core.String? sourceLanguageCode;

  /// The BCP-47 language code for translation output, for example, "zh-CN".
  ///
  /// Expected to be an exact match for GlossaryTerm.language_code.
  ///
  /// Required.
  core.String? targetLanguageCode;

  LanguageCodePair({
    this.sourceLanguageCode,
    this.targetLanguageCode,
  });

  LanguageCodePair.fromJson(core.Map json_)
      : this(
          sourceLanguageCode: json_.containsKey('sourceLanguageCode')
              ? json_['sourceLanguageCode'] as core.String
              : null,
          targetLanguageCode: json_.containsKey('targetLanguageCode')
              ? json_['targetLanguageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceLanguageCode != null)
          'sourceLanguageCode': sourceLanguageCode!,
        if (targetLanguageCode != null)
          'targetLanguageCode': targetLanguageCode!,
      };
}

/// Used with equivalent term set glossaries.
class LanguageCodesSet {
  /// The BCP-47 language code(s) for terms defined in the glossary.
  ///
  /// All entries are unique. The list contains at least two entries. Expected
  /// to be an exact match for GlossaryTerm.language_code.
  core.List<core.String>? languageCodes;

  LanguageCodesSet({
    this.languageCodes,
  });

  LanguageCodesSet.fromJson(core.Map json_)
      : this(
          languageCodes: json_.containsKey('languageCodes')
              ? (json_['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCodes != null) 'languageCodes': languageCodes!,
      };
}

/// Response message for ListGlossaries.
class ListGlossariesResponse {
  /// The list of glossaries for a project.
  core.List<Glossary>? glossaries;

  /// A token to retrieve a page of results.
  ///
  /// Pass this value in the \[ListGlossariesRequest.page_token\] field in the
  /// subsequent call to `ListGlossaries` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListGlossariesResponse({
    this.glossaries,
    this.nextPageToken,
  });

  ListGlossariesResponse.fromJson(core.Map json_)
      : this(
          glossaries: json_.containsKey('glossaries')
              ? (json_['glossaries'] as core.List)
                  .map((value) => Glossary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glossaries != null) 'glossaries': glossaries!,
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

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

  /// The normal response of the operation in case of success.
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

/// Output configuration for BatchTranslateText request.
class OutputConfig {
  /// Google Cloud Storage destination for output content.
  ///
  /// For every single input file (for example, gs://a/b/c.\[extension\]), we
  /// generate at most 2 * n output files. (n is the # of target_language_codes
  /// in the BatchTranslateTextRequest). Output files (tsv) generated are
  /// compliant with RFC 4180 except that record delimiters are '\n' instead of
  /// '\r\n'. We don't provide any way to change record delimiters. While the
  /// input files are being processed, we write/update an index file 'index.csv'
  /// under 'output_uri_prefix' (for example, gs://translation-test/index.csv)
  /// The index file is generated/updated as new files are being translated. The
  /// format is: input_file,target_language_code,translations_file,errors_file,
  /// glossary_translations_file,glossary_errors_file input_file is one file we
  /// matched using gcs_source.input_uri. target_language_code is provided in
  /// the request. translations_file contains the translations. (details
  /// provided below) errors_file contains the errors during processing of the
  /// file. (details below). Both translations_file and errors_file could be
  /// empty strings if we have no content to output. glossary_translations_file
  /// and glossary_errors_file are always empty strings if the input_file is
  /// tsv. They could also be empty if we have no content to output. Once a row
  /// is present in index.csv, the input/output matching never changes. Callers
  /// should also expect all the content in input_file are processed and ready
  /// to be consumed (that is, no partial output file is written). Since
  /// index.csv will be keeping updated during the process, please make sure
  /// there is no custom retention policy applied on the output bucket that may
  /// avoid file updating.
  /// (https://cloud.google.com/storage/docs/bucket-lock?hl=en#retention-policy)
  /// The format of translations_file (for target language code 'trg') is:
  /// gs://translation_test/a_b_c_'trg'_translations.\[extension\] If the input
  /// file extension is tsv, the output has the following columns: Column 1: ID
  /// of the request provided in the input, if it's not provided in the input,
  /// then the input row number is used (0-based). Column 2: source sentence.
  /// Column 3: translation without applying a glossary. Empty string if there
  /// is an error. Column 4 (only present if a glossary is provided in the
  /// request): translation after applying the glossary. Empty string if there
  /// is an error applying the glossary. Could be same string as column 3 if
  /// there is no glossary applied. If input file extension is a txt or html,
  /// the translation is directly written to the output file. If glossary is
  /// requested, a separate glossary_translations_file has format of
  /// gs://translation_test/a_b_c_'trg'_glossary_translations.\[extension\] The
  /// format of errors file (for target language code 'trg') is:
  /// gs://translation_test/a_b_c_'trg'_errors.\[extension\] If the input file
  /// extension is tsv, errors_file contains the following: Column 1: ID of the
  /// request provided in the input, if it's not provided in the input, then the
  /// input row number is used (0-based). Column 2: source sentence. Column 3:
  /// Error detail for the translation. Could be empty. Column 4 (only present
  /// if a glossary is provided in the request): Error when applying the
  /// glossary. If the input file extension is txt or html, glossary_error_file
  /// will be generated that contains error details. glossary_error_file has
  /// format of gs://translation_test/a_b_c_'trg'_glossary_errors.\[extension\]
  GcsDestination? gcsDestination;

  OutputConfig({
    this.gcsDestination,
  });

  OutputConfig.fromJson(core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
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

/// A single supported language response corresponds to information related to
/// one supported language.
class SupportedLanguage {
  /// Human readable name of the language localized in the display language
  /// specified in the request.
  core.String? displayName;

  /// Supported language code, generally consisting of its ISO 639-1 identifier,
  /// for example, 'en', 'ja'.
  ///
  /// In certain cases, BCP-47 codes including language and region identifiers
  /// are returned (for example, 'zh-TW' and 'zh-CN')
  core.String? languageCode;

  /// Can be used as source language.
  core.bool? supportSource;

  /// Can be used as target language.
  core.bool? supportTarget;

  SupportedLanguage({
    this.displayName,
    this.languageCode,
    this.supportSource,
    this.supportTarget,
  });

  SupportedLanguage.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          supportSource: json_.containsKey('supportSource')
              ? json_['supportSource'] as core.bool
              : null,
          supportTarget: json_.containsKey('supportTarget')
              ? json_['supportTarget'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (supportSource != null) 'supportSource': supportSource!,
        if (supportTarget != null) 'supportTarget': supportTarget!,
      };
}

/// The response message for discovering supported languages.
class SupportedLanguages {
  /// A list of supported language responses.
  ///
  /// This list contains an entry for each language the Translation API
  /// supports.
  core.List<SupportedLanguage>? languages;

  SupportedLanguages({
    this.languages,
  });

  SupportedLanguages.fromJson(core.Map json_)
      : this(
          languages: json_.containsKey('languages')
              ? (json_['languages'] as core.List)
                  .map((value) => SupportedLanguage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languages != null) 'languages': languages!,
      };
}

/// A document translation request.
class TranslateDocumentRequest {
  /// Input configurations.
  ///
  /// Required.
  DocumentInputConfig? documentInputConfig;

  /// Output configurations.
  ///
  /// Defines if the output file should be stored within Cloud Storage as well
  /// as the desired output format. If not provided the translated file will
  /// only be returned through a byte-stream and its output mime type will be
  /// the same as the input file's mime type.
  ///
  /// Optional.
  DocumentOutputConfig? documentOutputConfig;

  /// Glossary to be applied.
  ///
  /// The glossary must be within the same region (have the same location-id) as
  /// the model, otherwise an INVALID_ARGUMENT (400) error is returned.
  ///
  /// Optional.
  TranslateTextGlossaryConfig? glossaryConfig;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter. See
  /// https://cloud.google.com/translate/docs/advanced/labels for more
  /// information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The `model` type requested for this translation.
  ///
  /// The format depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// If not provided, the default Google model (NMT) will be used for
  /// translation.
  ///
  /// Optional.
  core.String? model;

  /// The BCP-47 language code of the input document if known, for example,
  /// "en-US" or "sr-Latn".
  ///
  /// Supported language codes are listed in Language Support. If the source
  /// language isn't specified, the API attempts to identify the source language
  /// automatically and returns the source language within the response. Source
  /// language must be specified if the request contains a glossary or a custom
  /// model.
  ///
  /// Optional.
  core.String? sourceLanguageCode;

  /// The BCP-47 language code to use for translation of the input document, set
  /// to one of the language codes listed in Language Support.
  ///
  /// Required.
  core.String? targetLanguageCode;

  TranslateDocumentRequest({
    this.documentInputConfig,
    this.documentOutputConfig,
    this.glossaryConfig,
    this.labels,
    this.model,
    this.sourceLanguageCode,
    this.targetLanguageCode,
  });

  TranslateDocumentRequest.fromJson(core.Map json_)
      : this(
          documentInputConfig: json_.containsKey('documentInputConfig')
              ? DocumentInputConfig.fromJson(json_['documentInputConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          documentOutputConfig: json_.containsKey('documentOutputConfig')
              ? DocumentOutputConfig.fromJson(json_['documentOutputConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          glossaryConfig: json_.containsKey('glossaryConfig')
              ? TranslateTextGlossaryConfig.fromJson(json_['glossaryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          sourceLanguageCode: json_.containsKey('sourceLanguageCode')
              ? json_['sourceLanguageCode'] as core.String
              : null,
          targetLanguageCode: json_.containsKey('targetLanguageCode')
              ? json_['targetLanguageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentInputConfig != null)
          'documentInputConfig': documentInputConfig!,
        if (documentOutputConfig != null)
          'documentOutputConfig': documentOutputConfig!,
        if (glossaryConfig != null) 'glossaryConfig': glossaryConfig!,
        if (labels != null) 'labels': labels!,
        if (model != null) 'model': model!,
        if (sourceLanguageCode != null)
          'sourceLanguageCode': sourceLanguageCode!,
        if (targetLanguageCode != null)
          'targetLanguageCode': targetLanguageCode!,
      };
}

/// A translated document response message.
class TranslateDocumentResponse {
  /// Translated document.
  DocumentTranslation? documentTranslation;

  /// The `glossary_config` used for this translation.
  TranslateTextGlossaryConfig? glossaryConfig;

  /// The document's translation output if a glossary is provided in the
  /// request.
  ///
  /// This can be the same as \[TranslateDocumentResponse.document_translation\]
  /// if no glossary terms apply.
  DocumentTranslation? glossaryDocumentTranslation;

  /// Only present when 'model' is present in the request.
  ///
  /// 'model' is normalized to have a project number. For example: If the
  /// 'model' field in TranslateDocumentRequest is:
  /// `projects/{project-id}/locations/{location-id}/models/general/nmt` then
  /// `model` here would be normalized to
  /// `projects/{project-number}/locations/{location-id}/models/general/nmt`.
  core.String? model;

  TranslateDocumentResponse({
    this.documentTranslation,
    this.glossaryConfig,
    this.glossaryDocumentTranslation,
    this.model,
  });

  TranslateDocumentResponse.fromJson(core.Map json_)
      : this(
          documentTranslation: json_.containsKey('documentTranslation')
              ? DocumentTranslation.fromJson(json_['documentTranslation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          glossaryConfig: json_.containsKey('glossaryConfig')
              ? TranslateTextGlossaryConfig.fromJson(json_['glossaryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          glossaryDocumentTranslation:
              json_.containsKey('glossaryDocumentTranslation')
                  ? DocumentTranslation.fromJson(
                      json_['glossaryDocumentTranslation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentTranslation != null)
          'documentTranslation': documentTranslation!,
        if (glossaryConfig != null) 'glossaryConfig': glossaryConfig!,
        if (glossaryDocumentTranslation != null)
          'glossaryDocumentTranslation': glossaryDocumentTranslation!,
        if (model != null) 'model': model!,
      };
}

/// Configures which glossary should be used for a specific target language, and
/// defines options for applying that glossary.
class TranslateTextGlossaryConfig {
  /// The `glossary` to be applied for this translation.
  ///
  /// The format depends on glossary: - User provided custom glossary:
  /// `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`
  ///
  /// Required.
  core.String? glossary;

  /// Indicates match is case-insensitive.
  ///
  /// Default value is false if missing.
  ///
  /// Optional.
  core.bool? ignoreCase;

  TranslateTextGlossaryConfig({
    this.glossary,
    this.ignoreCase,
  });

  TranslateTextGlossaryConfig.fromJson(core.Map json_)
      : this(
          glossary: json_.containsKey('glossary')
              ? json_['glossary'] as core.String
              : null,
          ignoreCase: json_.containsKey('ignoreCase')
              ? json_['ignoreCase'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glossary != null) 'glossary': glossary!,
        if (ignoreCase != null) 'ignoreCase': ignoreCase!,
      };
}

/// The request message for synchronous translation.
class TranslateTextRequest {
  /// The content of the input in string format.
  ///
  /// We recommend the total content be less than 30k codepoints. The max length
  /// of this field is 1024. Use BatchTranslateText for larger text.
  ///
  /// Required.
  core.List<core.String>? contents;

  /// Glossary to be applied.
  ///
  /// The glossary must be within the same region (have the same location-id) as
  /// the model, otherwise an INVALID_ARGUMENT (400) error is returned.
  ///
  /// Optional.
  TranslateTextGlossaryConfig? glossaryConfig;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter. See
  /// https://cloud.google.com/translate/docs/advanced/labels for more
  /// information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The format of the source text, for example, "text/html", "text/plain".
  ///
  /// If left blank, the MIME type defaults to "text/html".
  ///
  /// Optional.
  core.String? mimeType;

  /// The `model` type requested for this translation.
  ///
  /// The format depends on model type: - AutoML Translation models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/{model-id}`
  /// - General (built-in) models:
  /// `projects/{project-number-or-id}/locations/{location-id}/models/general/nmt`,
  /// For global (non-regionalized) requests, use `location-id` `global`. For
  /// example,
  /// `projects/{project-number-or-id}/locations/global/models/general/nmt`. If
  /// not provided, the default Google model (NMT) will be used
  ///
  /// Optional.
  core.String? model;

  /// The BCP-47 language code of the input text if known, for example, "en-US"
  /// or "sr-Latn".
  ///
  /// Supported language codes are listed in Language Support. If the source
  /// language isn't specified, the API attempts to identify the source language
  /// automatically and returns the source language within the response.
  ///
  /// Optional.
  core.String? sourceLanguageCode;

  /// The BCP-47 language code to use for translation of the input text, set to
  /// one of the language codes listed in Language Support.
  ///
  /// Required.
  core.String? targetLanguageCode;

  TranslateTextRequest({
    this.contents,
    this.glossaryConfig,
    this.labels,
    this.mimeType,
    this.model,
    this.sourceLanguageCode,
    this.targetLanguageCode,
  });

  TranslateTextRequest.fromJson(core.Map json_)
      : this(
          contents: json_.containsKey('contents')
              ? (json_['contents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          glossaryConfig: json_.containsKey('glossaryConfig')
              ? TranslateTextGlossaryConfig.fromJson(json_['glossaryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          sourceLanguageCode: json_.containsKey('sourceLanguageCode')
              ? json_['sourceLanguageCode'] as core.String
              : null,
          targetLanguageCode: json_.containsKey('targetLanguageCode')
              ? json_['targetLanguageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contents != null) 'contents': contents!,
        if (glossaryConfig != null) 'glossaryConfig': glossaryConfig!,
        if (labels != null) 'labels': labels!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (model != null) 'model': model!,
        if (sourceLanguageCode != null)
          'sourceLanguageCode': sourceLanguageCode!,
        if (targetLanguageCode != null)
          'targetLanguageCode': targetLanguageCode!,
      };
}

class TranslateTextResponse {
  /// Text translation responses if a glossary is provided in the request.
  ///
  /// This can be the same as `translations` if no terms apply. This field has
  /// the same length as `contents`.
  core.List<Translation>? glossaryTranslations;

  /// Text translation responses with no glossary applied.
  ///
  /// This field has the same length as `contents`.
  core.List<Translation>? translations;

  TranslateTextResponse({
    this.glossaryTranslations,
    this.translations,
  });

  TranslateTextResponse.fromJson(core.Map json_)
      : this(
          glossaryTranslations: json_.containsKey('glossaryTranslations')
              ? (json_['glossaryTranslations'] as core.List)
                  .map((value) => Translation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          translations: json_.containsKey('translations')
              ? (json_['translations'] as core.List)
                  .map((value) => Translation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glossaryTranslations != null)
          'glossaryTranslations': glossaryTranslations!,
        if (translations != null) 'translations': translations!,
      };
}

/// A single translation response.
class Translation {
  /// The BCP-47 language code of source text in the initial request, detected
  /// automatically, if no source language was passed within the initial
  /// request.
  ///
  /// If the source language was passed, auto-detection of the language does not
  /// occur and this field is empty.
  core.String? detectedLanguageCode;

  /// The `glossary_config` used for this translation.
  TranslateTextGlossaryConfig? glossaryConfig;

  /// Only present when `model` is present in the request.
  ///
  /// `model` here is normalized to have project number. For example: If the
  /// `model` requested in TranslationTextRequest is
  /// `projects/{project-id}/locations/{location-id}/models/general/nmt` then
  /// `model` here would be normalized to
  /// `projects/{project-number}/locations/{location-id}/models/general/nmt`.
  core.String? model;

  /// Text translated into the target language.
  ///
  /// If an error occurs during translation, this field might be excluded from
  /// the response.
  core.String? translatedText;

  Translation({
    this.detectedLanguageCode,
    this.glossaryConfig,
    this.model,
    this.translatedText,
  });

  Translation.fromJson(core.Map json_)
      : this(
          detectedLanguageCode: json_.containsKey('detectedLanguageCode')
              ? json_['detectedLanguageCode'] as core.String
              : null,
          glossaryConfig: json_.containsKey('glossaryConfig')
              ? TranslateTextGlossaryConfig.fromJson(json_['glossaryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          translatedText: json_.containsKey('translatedText')
              ? json_['translatedText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguageCode != null)
          'detectedLanguageCode': detectedLanguageCode!,
        if (glossaryConfig != null) 'glossaryConfig': glossaryConfig!,
        if (model != null) 'model': model!,
        if (translatedText != null) 'translatedText': translatedText!,
      };
}

/// The request message for Operations.WaitOperation.
class WaitOperationRequest {
  /// The maximum duration to wait before timing out.
  ///
  /// If left blank, the wait will be at most the time permitted by the
  /// underlying HTTP/RPC protocol. If RPC context deadline is also specified,
  /// the shorter one will be used.
  core.String? timeout;

  WaitOperationRequest({
    this.timeout,
  });

  WaitOperationRequest.fromJson(core.Map json_)
      : this(
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timeout != null) 'timeout': timeout!,
      };
}
