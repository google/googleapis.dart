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

/// Firebase ML API - v2beta
///
/// Access custom machine learning models hosted via Firebase ML.
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseMLApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsPublishersResource]
///       - [ProjectsLocationsPublishersModelsResource]
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

/// Access custom machine learning models hosted via Firebase ML.
class FirebaseMLApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseMLApi(
    http.Client client, {
    core.String rootUrl = 'https://firebaseml.googleapis.com/',
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

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPublishersResource get publishers =>
      ProjectsLocationsPublishersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsPublishersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPublishersModelsResource get models =>
      ProjectsLocationsPublishersModelsResource(_requester);

  ProjectsLocationsPublishersResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsPublishersModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPublishersModelsResource(commons.ApiRequester client)
    : _requester = client;

  /// Perform a token counting.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [endpoint] - Required. The name of the Endpoint requested to perform token
  /// counting. Format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/publishers/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAiplatformV1beta1CountTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAiplatformV1beta1CountTokensResponse> countTokens(
    GoogleCloudAiplatformV1beta1CountTokensRequest request,
    core.String endpoint, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$endpoint') + ':countTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAiplatformV1beta1CountTokensResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate content with multimodal inputs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [model] - Required. The fully qualified name of the publisher model or
  /// tuned model endpoint to use. Publisher model format:
  /// `projects/{project}/locations/{location}/publishers / * /models / * `
  /// Tuned model endpoint format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/publishers/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAiplatformV1beta1GenerateContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAiplatformV1beta1GenerateContentResponse>
  generateContent(
    GoogleCloudAiplatformV1beta1GenerateContentRequest request,
    core.String model, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$model') + ':generateContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAiplatformV1beta1GenerateContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Generate content with multimodal inputs with streaming support.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [model] - Required. The fully qualified name of the publisher model or
  /// tuned model endpoint to use. Publisher model format:
  /// `projects/{project}/locations/{location}/publishers / * /models / * `
  /// Tuned model endpoint format:
  /// `projects/{project}/locations/{location}/endpoints/{endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/publishers/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAiplatformV1beta1GenerateContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAiplatformV1beta1GenerateContentResponse>
  streamGenerateContent(
    GoogleCloudAiplatformV1beta1GenerateContentRequest request,
    core.String model, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$model') + ':streamGenerateContent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAiplatformV1beta1GenerateContentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// The generic reusable api auth config.
///
/// Deprecated. Please use AuthConfig
/// (google/cloud/aiplatform/master/auth.proto) instead.
class GoogleCloudAiplatformV1beta1ApiAuth {
  /// The API secret.
  GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig? apiKeyConfig;

  GoogleCloudAiplatformV1beta1ApiAuth({this.apiKeyConfig});

  GoogleCloudAiplatformV1beta1ApiAuth.fromJson(core.Map json_)
    : this(
        apiKeyConfig:
            json_.containsKey('apiKeyConfig')
                ? GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig.fromJson(
                  json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiKeyConfig != null) 'apiKeyConfig': apiKeyConfig!,
  };
}

/// The API secret.
typedef GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig = $ApiAuthApiKeyConfig;

/// Auth configuration to run the extension.
class GoogleCloudAiplatformV1beta1AuthConfig {
  /// Config for API key auth.
  GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig? apiKeyConfig;

  /// Type of auth scheme.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED"
  /// - "NO_AUTH" : No Auth.
  /// - "API_KEY_AUTH" : API Key Auth.
  /// - "HTTP_BASIC_AUTH" : HTTP Basic Auth.
  /// - "GOOGLE_SERVICE_ACCOUNT_AUTH" : Google Service Account Auth.
  /// - "OAUTH" : OAuth auth.
  /// - "OIDC_AUTH" : OpenID Connect (OIDC) Auth.
  core.String? authType;

  /// Config for Google Service Account auth.
  GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig?
  googleServiceAccountConfig;

  /// Config for HTTP Basic auth.
  GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig?
  httpBasicAuthConfig;

  /// Config for user oauth.
  GoogleCloudAiplatformV1beta1AuthConfigOauthConfig? oauthConfig;

  /// Config for user OIDC auth.
  GoogleCloudAiplatformV1beta1AuthConfigOidcConfig? oidcConfig;

  GoogleCloudAiplatformV1beta1AuthConfig({
    this.apiKeyConfig,
    this.authType,
    this.googleServiceAccountConfig,
    this.httpBasicAuthConfig,
    this.oauthConfig,
    this.oidcConfig,
  });

  GoogleCloudAiplatformV1beta1AuthConfig.fromJson(core.Map json_)
    : this(
        apiKeyConfig:
            json_.containsKey('apiKeyConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig.fromJson(
                  json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authType: json_['authType'] as core.String?,
        googleServiceAccountConfig:
            json_.containsKey('googleServiceAccountConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig.fromJson(
                  json_['googleServiceAccountConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpBasicAuthConfig:
            json_.containsKey('httpBasicAuthConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig.fromJson(
                  json_['httpBasicAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauthConfig:
            json_.containsKey('oauthConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfigOauthConfig.fromJson(
                  json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        oidcConfig:
            json_.containsKey('oidcConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfigOidcConfig.fromJson(
                  json_['oidcConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiKeyConfig != null) 'apiKeyConfig': apiKeyConfig!,
    if (authType != null) 'authType': authType!,
    if (googleServiceAccountConfig != null)
      'googleServiceAccountConfig': googleServiceAccountConfig!,
    if (httpBasicAuthConfig != null)
      'httpBasicAuthConfig': httpBasicAuthConfig!,
    if (oauthConfig != null) 'oauthConfig': oauthConfig!,
    if (oidcConfig != null) 'oidcConfig': oidcConfig!,
  };
}

/// Config for authentication with API key.
typedef GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig =
    $AuthConfigApiKeyConfig;

/// Config for Google Service Account Authentication.
typedef GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig =
    $AuthConfigGoogleServiceAccountConfig;

/// Config for HTTP Basic Authentication.
typedef GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig =
    $AuthConfigHttpBasicAuthConfig;

/// Config for user oauth.
typedef GoogleCloudAiplatformV1beta1AuthConfigOauthConfig =
    $AuthConfigOauthConfig;

/// Config for user OIDC auth.
typedef GoogleCloudAiplatformV1beta1AuthConfigOidcConfig =
    $AuthConfigOidcConfig;

/// Content blob.
typedef GoogleCloudAiplatformV1beta1Blob = $Blob;

/// A response candidate generated from the model.
class GoogleCloudAiplatformV1beta1Candidate {
  /// Average log probability score of the candidate.
  ///
  /// Output only.
  core.double? avgLogprobs;

  /// Source attribution of the generated content.
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1CitationMetadata? citationMetadata;

  /// Content parts of the candidate.
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1Content? content;

  /// Describes the reason the mode stopped generating tokens in more detail.
  ///
  /// This is only filled when `finish_reason` is set.
  ///
  /// Output only.
  core.String? finishMessage;

  /// The reason why the model stopped generating tokens.
  ///
  /// If empty, the model has not stopped generating the tokens.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FINISH_REASON_UNSPECIFIED" : The finish reason is unspecified.
  /// - "STOP" : Token generation reached a natural stopping point or a
  /// configured stop sequence.
  /// - "MAX_TOKENS" : Token generation reached the configured maximum output
  /// tokens.
  /// - "SAFETY" : Token generation stopped because the content potentially
  /// contains safety violations. NOTE: When streaming, content is empty if
  /// content filters blocks the output.
  /// - "RECITATION" : The token generation stopped because of potential
  /// recitation.
  /// - "OTHER" : All other reasons that stopped the token generation.
  /// - "BLOCKLIST" : Token generation stopped because the content contains
  /// forbidden terms.
  /// - "PROHIBITED_CONTENT" : Token generation stopped for potentially
  /// containing prohibited content.
  /// - "SPII" : Token generation stopped because the content potentially
  /// contains Sensitive Personally Identifiable Information (SPII).
  /// - "MALFORMED_FUNCTION_CALL" : The function call generated by the model is
  /// invalid.
  /// - "IMAGE_SAFETY" : Token generation stopped because generated images has
  /// safety violations.
  /// - "IMAGE_PROHIBITED_CONTENT" : Image generation stopped because generated
  /// images has other prohibited content.
  /// - "IMAGE_RECITATION" : Image generation stopped due to recitation.
  /// - "IMAGE_OTHER" : Image generation stopped because of other miscellaneous
  /// issue.
  /// - "UNEXPECTED_TOOL_CALL" : The tool call generated by the model is
  /// invalid.
  core.String? finishReason;

  /// Metadata specifies sources used to ground generated content.
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1GroundingMetadata? groundingMetadata;

  /// Index of the candidate.
  ///
  /// Output only.
  core.int? index;

  /// Log-likelihood scores for the response tokens and top tokens
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1LogprobsResult? logprobsResult;

  /// List of ratings for the safety of a response candidate.
  ///
  /// There is at most one rating per category.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1SafetyRating>? safetyRatings;

  /// Metadata related to url context retrieval tool.
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1UrlContextMetadata? urlContextMetadata;

  GoogleCloudAiplatformV1beta1Candidate({
    this.avgLogprobs,
    this.citationMetadata,
    this.content,
    this.finishMessage,
    this.finishReason,
    this.groundingMetadata,
    this.index,
    this.logprobsResult,
    this.safetyRatings,
    this.urlContextMetadata,
  });

  GoogleCloudAiplatformV1beta1Candidate.fromJson(core.Map json_)
    : this(
        avgLogprobs: (json_['avgLogprobs'] as core.num?)?.toDouble(),
        citationMetadata:
            json_.containsKey('citationMetadata')
                ? GoogleCloudAiplatformV1beta1CitationMetadata.fromJson(
                  json_['citationMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        content:
            json_.containsKey('content')
                ? GoogleCloudAiplatformV1beta1Content.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        finishMessage: json_['finishMessage'] as core.String?,
        finishReason: json_['finishReason'] as core.String?,
        groundingMetadata:
            json_.containsKey('groundingMetadata')
                ? GoogleCloudAiplatformV1beta1GroundingMetadata.fromJson(
                  json_['groundingMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        index: json_['index'] as core.int?,
        logprobsResult:
            json_.containsKey('logprobsResult')
                ? GoogleCloudAiplatformV1beta1LogprobsResult.fromJson(
                  json_['logprobsResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        safetyRatings:
            (json_['safetyRatings'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1SafetyRating.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        urlContextMetadata:
            json_.containsKey('urlContextMetadata')
                ? GoogleCloudAiplatformV1beta1UrlContextMetadata.fromJson(
                  json_['urlContextMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (avgLogprobs != null) 'avgLogprobs': avgLogprobs!,
    if (citationMetadata != null) 'citationMetadata': citationMetadata!,
    if (content != null) 'content': content!,
    if (finishMessage != null) 'finishMessage': finishMessage!,
    if (finishReason != null) 'finishReason': finishReason!,
    if (groundingMetadata != null) 'groundingMetadata': groundingMetadata!,
    if (index != null) 'index': index!,
    if (logprobsResult != null) 'logprobsResult': logprobsResult!,
    if (safetyRatings != null) 'safetyRatings': safetyRatings!,
    if (urlContextMetadata != null) 'urlContextMetadata': urlContextMetadata!,
  };
}

/// Source attributions for content.
class GoogleCloudAiplatformV1beta1Citation {
  /// End index into the content.
  ///
  /// Output only.
  core.int? endIndex;

  /// License of the attribution.
  ///
  /// Output only.
  core.String? license;

  /// Publication date of the attribution.
  ///
  /// Output only.
  Date? publicationDate;

  /// Start index into the content.
  ///
  /// Output only.
  core.int? startIndex;

  /// Title of the attribution.
  ///
  /// Output only.
  core.String? title;

  /// Url reference of the attribution.
  ///
  /// Output only.
  core.String? uri;

  GoogleCloudAiplatformV1beta1Citation({
    this.endIndex,
    this.license,
    this.publicationDate,
    this.startIndex,
    this.title,
    this.uri,
  });

  GoogleCloudAiplatformV1beta1Citation.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.int?,
        license: json_['license'] as core.String?,
        publicationDate:
            json_.containsKey('publicationDate')
                ? Date.fromJson(
                  json_['publicationDate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startIndex: json_['startIndex'] as core.int?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endIndex != null) 'endIndex': endIndex!,
    if (license != null) 'license': license!,
    if (publicationDate != null) 'publicationDate': publicationDate!,
    if (startIndex != null) 'startIndex': startIndex!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// A collection of source attributions for a piece of content.
class GoogleCloudAiplatformV1beta1CitationMetadata {
  /// List of citations.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1Citation>? citations;

  GoogleCloudAiplatformV1beta1CitationMetadata({this.citations});

  GoogleCloudAiplatformV1beta1CitationMetadata.fromJson(core.Map json_)
    : this(
        citations:
            (json_['citations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Citation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (citations != null) 'citations': citations!,
  };
}

/// Result of executing the \[ExecutableCode\].
///
/// Only generated when using the \[CodeExecution\] tool, and always follows a
/// `part` containing the \[ExecutableCode\].
typedef GoogleCloudAiplatformV1beta1CodeExecutionResult = $CodeExecutionResult;

/// The base structured datatype containing multi-part content of a message.
///
/// A `Content` includes a `role` field designating the producer of the
/// `Content` and a `parts` field containing multi-part data that contains the
/// content of the message turn.
class GoogleCloudAiplatformV1beta1Content {
  /// Ordered `Parts` that constitute a single message.
  ///
  /// Parts may have different IANA MIME types.
  ///
  /// Required.
  core.List<GoogleCloudAiplatformV1beta1Part>? parts;

  /// The producer of the content.
  ///
  /// Must be either 'user' or 'model'. Useful to set for multi-turn
  /// conversations, otherwise can be left blank or unset.
  ///
  /// Optional.
  core.String? role;

  GoogleCloudAiplatformV1beta1Content({this.parts, this.role});

  GoogleCloudAiplatformV1beta1Content.fromJson(core.Map json_)
    : this(
        parts:
            (json_['parts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Part.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parts != null) 'parts': parts!,
    if (role != null) 'role': role!,
  };
}

/// Request message for PredictionService.CountTokens.
class GoogleCloudAiplatformV1beta1CountTokensRequest {
  /// Input content.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1Content>? contents;

  /// Generation config that the model will use to generate the response.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GenerationConfig? generationConfig;

  /// The instances that are the input to token counting call.
  ///
  /// Schema is identical to the prediction schema of the underlying model.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? instances;

  /// The name of the publisher model requested to serve the prediction.
  ///
  /// Format: `projects/{project}/locations/{location}/publishers / * /models /
  /// * `
  ///
  /// Optional.
  core.String? model;

  /// The user provided system instructions for the model.
  ///
  /// Note: only text should be used in parts and content in each part will be
  /// in a separate paragraph.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Content? systemInstruction;

  /// A list of `Tools` the model may use to generate the next response.
  ///
  /// A `Tool` is a piece of code that enables the system to interact with
  /// external systems to perform an action, or set of actions, outside of
  /// knowledge and scope of the model.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1Tool>? tools;

  GoogleCloudAiplatformV1beta1CountTokensRequest({
    this.contents,
    this.generationConfig,
    this.instances,
    this.model,
    this.systemInstruction,
    this.tools,
  });

  GoogleCloudAiplatformV1beta1CountTokensRequest.fromJson(core.Map json_)
    : this(
        contents:
            (json_['contents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Content.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        generationConfig:
            json_.containsKey('generationConfig')
                ? GoogleCloudAiplatformV1beta1GenerationConfig.fromJson(
                  json_['generationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        instances:
            json_.containsKey('instances')
                ? json_['instances'] as core.List
                : null,
        model: json_['model'] as core.String?,
        systemInstruction:
            json_.containsKey('systemInstruction')
                ? GoogleCloudAiplatformV1beta1Content.fromJson(
                  json_['systemInstruction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tools:
            (json_['tools'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Tool.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (generationConfig != null) 'generationConfig': generationConfig!,
    if (instances != null) 'instances': instances!,
    if (model != null) 'model': model!,
    if (systemInstruction != null) 'systemInstruction': systemInstruction!,
    if (tools != null) 'tools': tools!,
  };
}

/// Response message for PredictionService.CountTokens.
class GoogleCloudAiplatformV1beta1CountTokensResponse {
  /// List of modalities that were processed in the request input.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1ModalityTokenCount>?
  promptTokensDetails;

  /// The total number of billable characters counted across all instances from
  /// the request.
  core.int? totalBillableCharacters;

  /// The total number of tokens counted across all instances from the request.
  core.int? totalTokens;

  GoogleCloudAiplatformV1beta1CountTokensResponse({
    this.promptTokensDetails,
    this.totalBillableCharacters,
    this.totalTokens,
  });

  GoogleCloudAiplatformV1beta1CountTokensResponse.fromJson(core.Map json_)
    : this(
        promptTokensDetails:
            (json_['promptTokensDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        totalBillableCharacters: json_['totalBillableCharacters'] as core.int?,
        totalTokens: json_['totalTokens'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (promptTokensDetails != null)
      'promptTokensDetails': promptTokensDetails!,
    if (totalBillableCharacters != null)
      'totalBillableCharacters': totalBillableCharacters!,
    if (totalTokens != null) 'totalTokens': totalTokens!,
  };
}

/// Describes the options to customize dynamic retrieval.
typedef GoogleCloudAiplatformV1beta1DynamicRetrievalConfig =
    $DynamicRetrievalConfig;

/// Tool to search public web data, powered by Vertex AI Search and Sec4
/// compliance.
typedef GoogleCloudAiplatformV1beta1EnterpriseWebSearch = $EnterpriseWebSearch;

/// Code generated by the model that is meant to be executed, and the result
/// returned to the model.
///
/// Generated when using the \[CodeExecution\] tool, in which the code will be
/// automatically executed, and a corresponding \[CodeExecutionResult\] will
/// also be generated.
typedef GoogleCloudAiplatformV1beta1ExecutableCode = $ExecutableCode;

/// Retrieve from data source powered by external API for grounding.
///
/// The external API is not owned by Google, but need to follow the pre-defined
/// API spec.
class GoogleCloudAiplatformV1beta1ExternalApi {
  /// The authentication config to access the API.
  ///
  /// Deprecated. Please use auth_config instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAiplatformV1beta1ApiAuth? apiAuth;

  /// The API spec that the external API implements.
  /// Possible string values are:
  /// - "API_SPEC_UNSPECIFIED" : Unspecified API spec. This value should not be
  /// used.
  /// - "SIMPLE_SEARCH" : Simple search API spec.
  /// - "ELASTIC_SEARCH" : Elastic search API spec.
  core.String? apiSpec;

  /// The authentication config to access the API.
  GoogleCloudAiplatformV1beta1AuthConfig? authConfig;

  /// Parameters for the elastic search API.
  GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams?
  elasticSearchParams;

  /// The endpoint of the external API.
  ///
  /// The system will call the API at this endpoint to retrieve the data for
  /// grounding. Example: https://acme.com:443/search
  core.String? endpoint;

  /// Parameters for the simple search API.
  GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams? simpleSearchParams;

  GoogleCloudAiplatformV1beta1ExternalApi({
    this.apiAuth,
    this.apiSpec,
    this.authConfig,
    this.elasticSearchParams,
    this.endpoint,
    this.simpleSearchParams,
  });

  GoogleCloudAiplatformV1beta1ExternalApi.fromJson(core.Map json_)
    : this(
        apiAuth:
            json_.containsKey('apiAuth')
                ? GoogleCloudAiplatformV1beta1ApiAuth.fromJson(
                  json_['apiAuth'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiSpec: json_['apiSpec'] as core.String?,
        authConfig:
            json_.containsKey('authConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        elasticSearchParams:
            json_.containsKey('elasticSearchParams')
                ? GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams.fromJson(
                  json_['elasticSearchParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endpoint: json_['endpoint'] as core.String?,
        simpleSearchParams:
            json_.containsKey('simpleSearchParams')
                ? GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams.fromJson(
                  json_['simpleSearchParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiAuth != null) 'apiAuth': apiAuth!,
    if (apiSpec != null) 'apiSpec': apiSpec!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (elasticSearchParams != null)
      'elasticSearchParams': elasticSearchParams!,
    if (endpoint != null) 'endpoint': endpoint!,
    if (simpleSearchParams != null) 'simpleSearchParams': simpleSearchParams!,
  };
}

/// The search parameters to use for the ELASTIC_SEARCH spec.
typedef GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams =
    $ExternalApiElasticSearchParams;

/// The search parameters to use for SIMPLE_SEARCH spec.
typedef GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams = $Empty;

/// URI based data.
typedef GoogleCloudAiplatformV1beta1FileData = $FileData;

/// A predicted \[FunctionCall\] returned from the model that contains a string
/// representing the \[FunctionDeclaration.name\] and a structured JSON object
/// containing the parameters and their values.
typedef GoogleCloudAiplatformV1beta1FunctionCall =
    $GoogleCloudAiplatformV1beta1FunctionCall;

/// Function calling config.
typedef GoogleCloudAiplatformV1beta1FunctionCallingConfig =
    $FunctionCallingConfig;

/// Structured representation of a function declaration as defined by the
/// [OpenAPI 3.0 specification](https://spec.openapis.org/oas/v3.0.3).
///
/// Included in this declaration are the function name, description, parameters
/// and response type. This FunctionDeclaration is a representation of a block
/// of code that can be used as a `Tool` by the model and executed by the
/// client.
class GoogleCloudAiplatformV1beta1FunctionDeclaration {
  /// Description and purpose of the function.
  ///
  /// Model uses it to decide how and whether to call the function.
  ///
  /// Optional.
  core.String? description;

  /// The name of the function to call.
  ///
  /// Must start with a letter or an underscore. Must be a-z, A-Z, 0-9, or
  /// contain underscores, dots and dashes, with a maximum length of 64.
  ///
  /// Required.
  core.String? name;

  /// Describes the parameters to this function in JSON Schema Object format.
  ///
  /// Reflects the Open API 3.03 Parameter Object. string Key: the name of the
  /// parameter. Parameter names are case sensitive. Schema Value: the Schema
  /// defining the type used for the parameter. For function with no parameters,
  /// this can be left unset. Parameter names must start with a letter or an
  /// underscore and must only contain chars a-z, A-Z, 0-9, or underscores with
  /// a maximum length of 64. Example with 1 required and 1 optional parameter:
  /// type: OBJECT properties: param1: type: STRING param2: type: INTEGER
  /// required: - param1
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Schema? parameters;

  /// Describes the parameters to the function in JSON Schema format.
  ///
  /// The schema must describe an object where the properties are the parameters
  /// to the function. For example: ``` { "type": "object", "properties": {
  /// "name": { "type": "string" }, "age": { "type": "integer" } },
  /// "additionalProperties": false, "required": ["name", "age"],
  /// "propertyOrdering": ["name", "age"] } ``` This field is mutually exclusive
  /// with `parameters`.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? parametersJsonSchema;

  /// Describes the output from this function in JSON Schema format.
  ///
  /// Reflects the Open API 3.03 Response Object. The Schema defines the type
  /// used for the response value of the function.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Schema? response;

  /// Describes the output from this function in JSON Schema format.
  ///
  /// The value specified by the schema is the response value of the function.
  /// This field is mutually exclusive with `response`.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? responseJsonSchema;

  GoogleCloudAiplatformV1beta1FunctionDeclaration({
    this.description,
    this.name,
    this.parameters,
    this.parametersJsonSchema,
    this.response,
    this.responseJsonSchema,
  });

  GoogleCloudAiplatformV1beta1FunctionDeclaration.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        parameters:
            json_.containsKey('parameters')
                ? GoogleCloudAiplatformV1beta1Schema.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parametersJsonSchema: json_['parametersJsonSchema'],
        response:
            json_.containsKey('response')
                ? GoogleCloudAiplatformV1beta1Schema.fromJson(
                  json_['response'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseJsonSchema: json_['responseJsonSchema'],
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (parameters != null) 'parameters': parameters!,
    if (parametersJsonSchema != null)
      'parametersJsonSchema': parametersJsonSchema!,
    if (response != null) 'response': response!,
    if (responseJsonSchema != null) 'responseJsonSchema': responseJsonSchema!,
  };
}

/// The result output from a \[FunctionCall\] that contains a string
/// representing the \[FunctionDeclaration.name\] and a structured JSON object
/// containing any output from the function is used as context to the model.
///
/// This should contain the result of a \[FunctionCall\] made based on model
/// prediction.
typedef GoogleCloudAiplatformV1beta1FunctionResponse =
    $GoogleCloudAiplatformV1beta1FunctionResponse;

/// Request message for \[PredictionService.GenerateContent\].
class GoogleCloudAiplatformV1beta1GenerateContentRequest {
  /// The name of the cached content used as context to serve the prediction.
  ///
  /// Note: only used in explicit caching, where users can have control over
  /// caching (e.g. what content to cache) and enjoy guaranteed cost savings.
  /// Format:
  /// `projects/{project}/locations/{location}/cachedContents/{cachedContent}`
  ///
  /// Optional.
  core.String? cachedContent;

  /// The content of the current conversation with the model.
  ///
  /// For single-turn queries, this is a single instance. For multi-turn
  /// queries, this is a repeated field that contains conversation history +
  /// latest request.
  ///
  /// Required.
  core.List<GoogleCloudAiplatformV1beta1Content>? contents;

  /// Generation config.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GenerationConfig? generationConfig;

  /// The labels with user-defined metadata for the request.
  ///
  /// It is used for billing and reporting only. Label keys and values can be no
  /// longer than 63 characters (Unicode codepoints) and can only contain
  /// lowercase letters, numeric characters, underscores, and dashes.
  /// International characters are allowed. Label values are optional. Label
  /// keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Per request settings for blocking unsafe content.
  ///
  /// Enforced on GenerateContentResponse.candidates.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1SafetySetting>? safetySettings;

  /// The user provided system instructions for the model.
  ///
  /// Note: only text should be used in parts and content in each part will be
  /// in a separate paragraph.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Content? systemInstruction;

  /// Tool config.
  ///
  /// This config is shared for all tools provided in the request.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1ToolConfig? toolConfig;

  /// A list of `Tools` the model may use to generate the next response.
  ///
  /// A `Tool` is a piece of code that enables the system to interact with
  /// external systems to perform an action, or set of actions, outside of
  /// knowledge and scope of the model.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1Tool>? tools;

  GoogleCloudAiplatformV1beta1GenerateContentRequest({
    this.cachedContent,
    this.contents,
    this.generationConfig,
    this.labels,
    this.safetySettings,
    this.systemInstruction,
    this.toolConfig,
    this.tools,
  });

  GoogleCloudAiplatformV1beta1GenerateContentRequest.fromJson(core.Map json_)
    : this(
        cachedContent: json_['cachedContent'] as core.String?,
        contents:
            (json_['contents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Content.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        generationConfig:
            json_.containsKey('generationConfig')
                ? GoogleCloudAiplatformV1beta1GenerationConfig.fromJson(
                  json_['generationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        safetySettings:
            (json_['safetySettings'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1SafetySetting.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        systemInstruction:
            json_.containsKey('systemInstruction')
                ? GoogleCloudAiplatformV1beta1Content.fromJson(
                  json_['systemInstruction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        toolConfig:
            json_.containsKey('toolConfig')
                ? GoogleCloudAiplatformV1beta1ToolConfig.fromJson(
                  json_['toolConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tools:
            (json_['tools'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Tool.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cachedContent != null) 'cachedContent': cachedContent!,
    if (contents != null) 'contents': contents!,
    if (generationConfig != null) 'generationConfig': generationConfig!,
    if (labels != null) 'labels': labels!,
    if (safetySettings != null) 'safetySettings': safetySettings!,
    if (systemInstruction != null) 'systemInstruction': systemInstruction!,
    if (toolConfig != null) 'toolConfig': toolConfig!,
    if (tools != null) 'tools': tools!,
  };
}

/// Response message for \[PredictionService.GenerateContent\].
class GoogleCloudAiplatformV1beta1GenerateContentResponse {
  /// Generated candidates.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1Candidate>? candidates;

  /// Timestamp when the request is made to the server.
  ///
  /// Output only.
  core.String? createTime;

  /// The model version used to generate the response.
  ///
  /// Output only.
  core.String? modelVersion;

  /// Content filter results for a prompt sent in the request.
  ///
  /// Note: Sent only in the first stream chunk. Only happens when no candidates
  /// were generated due to content violations.
  ///
  /// Output only.
  GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback?
  promptFeedback;

  /// response_id is used to identify each response.
  ///
  /// It is the encoding of the event_id.
  ///
  /// Output only.
  core.String? responseId;

  /// Usage metadata about the response(s).
  GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata?
  usageMetadata;

  GoogleCloudAiplatformV1beta1GenerateContentResponse({
    this.candidates,
    this.createTime,
    this.modelVersion,
    this.promptFeedback,
    this.responseId,
    this.usageMetadata,
  });

  GoogleCloudAiplatformV1beta1GenerateContentResponse.fromJson(core.Map json_)
    : this(
        candidates:
            (json_['candidates'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Candidate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        modelVersion: json_['modelVersion'] as core.String?,
        promptFeedback:
            json_.containsKey('promptFeedback')
                ? GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback.fromJson(
                  json_['promptFeedback']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseId: json_['responseId'] as core.String?,
        usageMetadata:
            json_.containsKey('usageMetadata')
                ? GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata.fromJson(
                  json_['usageMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (candidates != null) 'candidates': candidates!,
    if (createTime != null) 'createTime': createTime!,
    if (modelVersion != null) 'modelVersion': modelVersion!,
    if (promptFeedback != null) 'promptFeedback': promptFeedback!,
    if (responseId != null) 'responseId': responseId!,
    if (usageMetadata != null) 'usageMetadata': usageMetadata!,
  };
}

/// Content filter results for a prompt sent in the request.
class GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback {
  /// Blocked reason.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BLOCKED_REASON_UNSPECIFIED" : Unspecified blocked reason.
  /// - "SAFETY" : Candidates blocked due to safety.
  /// - "OTHER" : Candidates blocked due to other reason.
  /// - "BLOCKLIST" : Candidates blocked due to the terms which are included
  /// from the terminology blocklist.
  /// - "PROHIBITED_CONTENT" : Candidates blocked due to prohibited content.
  /// - "IMAGE_SAFETY" : Candidates blocked due to unsafe image generation
  /// content.
  core.String? blockReason;

  /// A readable block reason message.
  ///
  /// Output only.
  core.String? blockReasonMessage;

  /// Safety ratings.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1SafetyRating>? safetyRatings;

  GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback({
    this.blockReason,
    this.blockReasonMessage,
    this.safetyRatings,
  });

  GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback.fromJson(
    core.Map json_,
  ) : this(
        blockReason: json_['blockReason'] as core.String?,
        blockReasonMessage: json_['blockReasonMessage'] as core.String?,
        safetyRatings:
            (json_['safetyRatings'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1SafetyRating.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockReason != null) 'blockReason': blockReason!,
    if (blockReasonMessage != null) 'blockReasonMessage': blockReasonMessage!,
    if (safetyRatings != null) 'safetyRatings': safetyRatings!,
  };
}

/// Usage metadata about response(s).
class GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata {
  /// List of modalities of the cached content in the request input.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1ModalityTokenCount>? cacheTokensDetails;

  /// Number of tokens in the cached part in the input (the cached content).
  ///
  /// Output only.
  core.int? cachedContentTokenCount;

  /// Number of tokens in the response(s).
  core.int? candidatesTokenCount;

  /// List of modalities that were returned in the response.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1ModalityTokenCount>?
  candidatesTokensDetails;

  /// Number of tokens in the request.
  ///
  /// When `cached_content` is set, this is still the total effective prompt
  /// size meaning this includes the number of tokens in the cached content.
  core.int? promptTokenCount;

  /// List of modalities that were processed in the request input.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1ModalityTokenCount>?
  promptTokensDetails;

  /// Number of tokens present in thoughts output.
  ///
  /// Output only.
  core.int? thoughtsTokenCount;

  /// Number of tokens present in tool-use prompt(s).
  ///
  /// Output only.
  core.int? toolUsePromptTokenCount;

  /// List of modalities that were processed for tool-use request inputs.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1ModalityTokenCount>?
  toolUsePromptTokensDetails;

  /// Total token count for prompt, response candidates, and tool-use prompts
  /// (if present).
  core.int? totalTokenCount;

  /// Traffic type.
  ///
  /// This shows whether a request consumes Pay-As-You-Go or Provisioned
  /// Throughput quota.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRAFFIC_TYPE_UNSPECIFIED" : Unspecified request traffic type.
  /// - "ON_DEMAND" : Type for Pay-As-You-Go traffic.
  /// - "PROVISIONED_THROUGHPUT" : Type for Provisioned Throughput traffic.
  core.String? trafficType;

  GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata({
    this.cacheTokensDetails,
    this.cachedContentTokenCount,
    this.candidatesTokenCount,
    this.candidatesTokensDetails,
    this.promptTokenCount,
    this.promptTokensDetails,
    this.thoughtsTokenCount,
    this.toolUsePromptTokenCount,
    this.toolUsePromptTokensDetails,
    this.totalTokenCount,
    this.trafficType,
  });

  GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata.fromJson(
    core.Map json_,
  ) : this(
        cacheTokensDetails:
            (json_['cacheTokensDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cachedContentTokenCount: json_['cachedContentTokenCount'] as core.int?,
        candidatesTokenCount: json_['candidatesTokenCount'] as core.int?,
        candidatesTokensDetails:
            (json_['candidatesTokensDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        promptTokenCount: json_['promptTokenCount'] as core.int?,
        promptTokensDetails:
            (json_['promptTokensDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        thoughtsTokenCount: json_['thoughtsTokenCount'] as core.int?,
        toolUsePromptTokenCount: json_['toolUsePromptTokenCount'] as core.int?,
        toolUsePromptTokensDetails:
            (json_['toolUsePromptTokensDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1ModalityTokenCount.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        totalTokenCount: json_['totalTokenCount'] as core.int?,
        trafficType: json_['trafficType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cacheTokensDetails != null) 'cacheTokensDetails': cacheTokensDetails!,
    if (cachedContentTokenCount != null)
      'cachedContentTokenCount': cachedContentTokenCount!,
    if (candidatesTokenCount != null)
      'candidatesTokenCount': candidatesTokenCount!,
    if (candidatesTokensDetails != null)
      'candidatesTokensDetails': candidatesTokensDetails!,
    if (promptTokenCount != null) 'promptTokenCount': promptTokenCount!,
    if (promptTokensDetails != null)
      'promptTokensDetails': promptTokensDetails!,
    if (thoughtsTokenCount != null) 'thoughtsTokenCount': thoughtsTokenCount!,
    if (toolUsePromptTokenCount != null)
      'toolUsePromptTokenCount': toolUsePromptTokenCount!,
    if (toolUsePromptTokensDetails != null)
      'toolUsePromptTokensDetails': toolUsePromptTokensDetails!,
    if (totalTokenCount != null) 'totalTokenCount': totalTokenCount!,
    if (trafficType != null) 'trafficType': trafficType!,
  };
}

/// Generation config.
class GoogleCloudAiplatformV1beta1GenerationConfig {
  /// If enabled, audio timestamp will be included in the request to the model.
  ///
  /// Optional.
  core.bool? audioTimestamp;

  /// Number of candidates to generate.
  ///
  /// Optional.
  core.int? candidateCount;

  /// If enabled, the model will detect emotions and adapt its responses
  /// accordingly.
  ///
  /// Optional.
  core.bool? enableAffectiveDialog;

  /// Frequency penalties.
  ///
  /// Optional.
  core.double? frequencyPenalty;

  /// Logit probabilities.
  ///
  /// Optional.
  core.int? logprobs;

  /// The maximum number of output tokens to generate per message.
  ///
  /// Optional.
  core.int? maxOutputTokens;

  /// If specified, the media resolution specified will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MEDIA_RESOLUTION_UNSPECIFIED" : Media resolution has not been set.
  /// - "MEDIA_RESOLUTION_LOW" : Media resolution set to low (64 tokens).
  /// - "MEDIA_RESOLUTION_MEDIUM" : Media resolution set to medium (256 tokens).
  /// - "MEDIA_RESOLUTION_HIGH" : Media resolution set to high (zoomed reframing
  /// with 256 tokens).
  core.String? mediaResolution;

  /// Config for model selection.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GenerationConfigModelConfig? modelConfig;

  /// Positive penalties.
  ///
  /// Optional.
  core.double? presencePenalty;

  /// Output schema of the generated response.
  ///
  /// This is an alternative to `response_schema` that accepts
  /// [JSON Schema](https://json-schema.org/). If set, `response_schema` must be
  /// omitted, but `response_mime_type` is required. While the full JSON Schema
  /// may be sent, not all features are supported. Specifically, only the
  /// following properties are supported: - `$id` - `$defs` - `$ref` - `$anchor`
  /// - `type` - `format` - `title` - `description` - `enum` (for strings and
  /// numbers) - `items` - `prefixItems` - `minItems` - `maxItems` - `minimum` -
  /// `maximum` - `anyOf` - `oneOf` (interpreted the same as `anyOf`) -
  /// `properties` - `additionalProperties` - `required` The non-standard
  /// `propertyOrdering` property may also be set. Cyclic references are
  /// unrolled to a limited degree and, as such, may only be used within
  /// non-required properties. (Nullable properties are not sufficient.) If
  /// `$ref` is set on a sub-schema, no other properties, except for than those
  /// starting as a `$`, may be set.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? responseJsonSchema;

  /// If true, export the logprobs results in response.
  ///
  /// Optional.
  core.bool? responseLogprobs;

  /// Output response mimetype of the generated candidate text.
  ///
  /// Supported mimetype: - `text/plain`: (default) Text output. -
  /// `application/json`: JSON response in the candidates. The model needs to be
  /// prompted to output the appropriate response type, otherwise the behavior
  /// is undefined. This is a preview feature.
  ///
  /// Optional.
  core.String? responseMimeType;

  /// The modalities of the response.
  ///
  /// Optional.
  core.List<core.String>? responseModalities;

  /// The `Schema` object allows the definition of input and output data types.
  ///
  /// These types can be objects, but also primitives and arrays. Represents a
  /// select subset of an
  /// [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#schema).
  /// If set, a compatible response_mime_type must also be set. Compatible
  /// mimetypes: `application/json`: Schema for JSON response.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Schema? responseSchema;

  /// Routing configuration.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig? routingConfig;

  /// Seed.
  ///
  /// Optional.
  core.int? seed;

  /// The speech generation config.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1SpeechConfig? speechConfig;

  /// Stop sequences.
  ///
  /// Optional.
  core.List<core.String>? stopSequences;

  /// Controls the randomness of predictions.
  ///
  /// Optional.
  core.double? temperature;

  /// Config for thinking features.
  ///
  /// An error will be returned if this field is set for models that don't
  /// support thinking.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig? thinkingConfig;

  /// If specified, top-k sampling will be used.
  ///
  /// Optional.
  core.double? topK;

  /// If specified, nucleus sampling will be used.
  ///
  /// Optional.
  core.double? topP;

  GoogleCloudAiplatformV1beta1GenerationConfig({
    this.audioTimestamp,
    this.candidateCount,
    this.enableAffectiveDialog,
    this.frequencyPenalty,
    this.logprobs,
    this.maxOutputTokens,
    this.mediaResolution,
    this.modelConfig,
    this.presencePenalty,
    this.responseJsonSchema,
    this.responseLogprobs,
    this.responseMimeType,
    this.responseModalities,
    this.responseSchema,
    this.routingConfig,
    this.seed,
    this.speechConfig,
    this.stopSequences,
    this.temperature,
    this.thinkingConfig,
    this.topK,
    this.topP,
  });

  GoogleCloudAiplatformV1beta1GenerationConfig.fromJson(core.Map json_)
    : this(
        audioTimestamp: json_['audioTimestamp'] as core.bool?,
        candidateCount: json_['candidateCount'] as core.int?,
        enableAffectiveDialog: json_['enableAffectiveDialog'] as core.bool?,
        frequencyPenalty: (json_['frequencyPenalty'] as core.num?)?.toDouble(),
        logprobs: json_['logprobs'] as core.int?,
        maxOutputTokens: json_['maxOutputTokens'] as core.int?,
        mediaResolution: json_['mediaResolution'] as core.String?,
        modelConfig:
            json_.containsKey('modelConfig')
                ? GoogleCloudAiplatformV1beta1GenerationConfigModelConfig.fromJson(
                  json_['modelConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        presencePenalty: (json_['presencePenalty'] as core.num?)?.toDouble(),
        responseJsonSchema: json_['responseJsonSchema'],
        responseLogprobs: json_['responseLogprobs'] as core.bool?,
        responseMimeType: json_['responseMimeType'] as core.String?,
        responseModalities:
            (json_['responseModalities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        responseSchema:
            json_.containsKey('responseSchema')
                ? GoogleCloudAiplatformV1beta1Schema.fromJson(
                  json_['responseSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        routingConfig:
            json_.containsKey('routingConfig')
                ? GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig.fromJson(
                  json_['routingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        seed: json_['seed'] as core.int?,
        speechConfig:
            json_.containsKey('speechConfig')
                ? GoogleCloudAiplatformV1beta1SpeechConfig.fromJson(
                  json_['speechConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stopSequences:
            (json_['stopSequences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        temperature: (json_['temperature'] as core.num?)?.toDouble(),
        thinkingConfig:
            json_.containsKey('thinkingConfig')
                ? GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig.fromJson(
                  json_['thinkingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        topK: (json_['topK'] as core.num?)?.toDouble(),
        topP: (json_['topP'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioTimestamp != null) 'audioTimestamp': audioTimestamp!,
    if (candidateCount != null) 'candidateCount': candidateCount!,
    if (enableAffectiveDialog != null)
      'enableAffectiveDialog': enableAffectiveDialog!,
    if (frequencyPenalty != null) 'frequencyPenalty': frequencyPenalty!,
    if (logprobs != null) 'logprobs': logprobs!,
    if (maxOutputTokens != null) 'maxOutputTokens': maxOutputTokens!,
    if (mediaResolution != null) 'mediaResolution': mediaResolution!,
    if (modelConfig != null) 'modelConfig': modelConfig!,
    if (presencePenalty != null) 'presencePenalty': presencePenalty!,
    if (responseJsonSchema != null) 'responseJsonSchema': responseJsonSchema!,
    if (responseLogprobs != null) 'responseLogprobs': responseLogprobs!,
    if (responseMimeType != null) 'responseMimeType': responseMimeType!,
    if (responseModalities != null) 'responseModalities': responseModalities!,
    if (responseSchema != null) 'responseSchema': responseSchema!,
    if (routingConfig != null) 'routingConfig': routingConfig!,
    if (seed != null) 'seed': seed!,
    if (speechConfig != null) 'speechConfig': speechConfig!,
    if (stopSequences != null) 'stopSequences': stopSequences!,
    if (temperature != null) 'temperature': temperature!,
    if (thinkingConfig != null) 'thinkingConfig': thinkingConfig!,
    if (topK != null) 'topK': topK!,
    if (topP != null) 'topP': topP!,
  };
}

/// Config for model selection.
typedef GoogleCloudAiplatformV1beta1GenerationConfigModelConfig =
    $GoogleCloudAiplatformV1beta1GenerationConfigModelConfig;

/// The configuration for routing the request to a specific model.
class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig {
  /// Automated routing.
  GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode?
  autoMode;

  /// Manual routing.
  GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode?
  manualMode;

  GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig({
    this.autoMode,
    this.manualMode,
  });

  GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig.fromJson(
    core.Map json_,
  ) : this(
        autoMode:
            json_.containsKey('autoMode')
                ? GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode.fromJson(
                  json_['autoMode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        manualMode:
            json_.containsKey('manualMode')
                ? GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode.fromJson(
                  json_['manualMode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoMode != null) 'autoMode': autoMode!,
    if (manualMode != null) 'manualMode': manualMode!,
  };
}

/// When automated routing is specified, the routing will be determined by the
/// pretrained routing model and customer provided model routing preference.
typedef GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode =
    $GenerationConfigRoutingConfigAutoRoutingMode;

/// When manual routing is set, the specified model will be used directly.
typedef GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode =
    $GenerationConfigRoutingConfigManualRoutingMode;

/// Config for thinking features.
typedef GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig =
    $GenerationConfigThinkingConfig;

/// Tool to retrieve public maps data for grounding, powered by Google.
class GoogleCloudAiplatformV1beta1GoogleMaps {
  /// The authentication config to access the API.
  ///
  /// Deprecated. Please use auth_config instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudAiplatformV1beta1ApiAuth? apiAuth;

  /// The authentication config to access the API.
  ///
  /// Only API key is supported.
  GoogleCloudAiplatformV1beta1AuthConfig? authConfig;

  GoogleCloudAiplatformV1beta1GoogleMaps({this.apiAuth, this.authConfig});

  GoogleCloudAiplatformV1beta1GoogleMaps.fromJson(core.Map json_)
    : this(
        apiAuth:
            json_.containsKey('apiAuth')
                ? GoogleCloudAiplatformV1beta1ApiAuth.fromJson(
                  json_['apiAuth'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authConfig:
            json_.containsKey('authConfig')
                ? GoogleCloudAiplatformV1beta1AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiAuth != null) 'apiAuth': apiAuth!,
    if (authConfig != null) 'authConfig': authConfig!,
  };
}

/// Tool to retrieve public web data for grounding, powered by Google.
class GoogleCloudAiplatformV1beta1GoogleSearchRetrieval {
  /// Specifies the dynamic retrieval configuration for the given source.
  GoogleCloudAiplatformV1beta1DynamicRetrievalConfig? dynamicRetrievalConfig;

  GoogleCloudAiplatformV1beta1GoogleSearchRetrieval({
    this.dynamicRetrievalConfig,
  });

  GoogleCloudAiplatformV1beta1GoogleSearchRetrieval.fromJson(core.Map json_)
    : this(
        dynamicRetrievalConfig:
            json_.containsKey('dynamicRetrievalConfig')
                ? GoogleCloudAiplatformV1beta1DynamicRetrievalConfig.fromJson(
                  json_['dynamicRetrievalConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dynamicRetrievalConfig != null)
      'dynamicRetrievalConfig': dynamicRetrievalConfig!,
  };
}

/// Grounding chunk.
class GoogleCloudAiplatformV1beta1GroundingChunk {
  /// Grounding chunk from Google Maps.
  GoogleCloudAiplatformV1beta1GroundingChunkMaps? maps;

  /// Grounding chunk from context retrieved by the retrieval tools.
  GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext? retrievedContext;

  /// Grounding chunk from the web.
  GoogleCloudAiplatformV1beta1GroundingChunkWeb? web;

  GoogleCloudAiplatformV1beta1GroundingChunk({
    this.maps,
    this.retrievedContext,
    this.web,
  });

  GoogleCloudAiplatformV1beta1GroundingChunk.fromJson(core.Map json_)
    : this(
        maps:
            json_.containsKey('maps')
                ? GoogleCloudAiplatformV1beta1GroundingChunkMaps.fromJson(
                  json_['maps'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retrievedContext:
            json_.containsKey('retrievedContext')
                ? GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext.fromJson(
                  json_['retrievedContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        web:
            json_.containsKey('web')
                ? GoogleCloudAiplatformV1beta1GroundingChunkWeb.fromJson(
                  json_['web'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maps != null) 'maps': maps!,
    if (retrievedContext != null) 'retrievedContext': retrievedContext!,
    if (web != null) 'web': web!,
  };
}

/// Chunk from Google Maps.
class GoogleCloudAiplatformV1beta1GroundingChunkMaps {
  /// Sources used to generate the place answer.
  ///
  /// This includes review snippets and photos that were used to generate the
  /// answer, as well as uris to flag content.
  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources?
  placeAnswerSources;

  /// This Place's resource name, in `places/{place_id}` format.
  ///
  /// Can be used to look up the Place.
  core.String? placeId;

  /// Text of the chunk.
  core.String? text;

  /// Title of the chunk.
  core.String? title;

  /// URI reference of the chunk.
  core.String? uri;

  GoogleCloudAiplatformV1beta1GroundingChunkMaps({
    this.placeAnswerSources,
    this.placeId,
    this.text,
    this.title,
    this.uri,
  });

  GoogleCloudAiplatformV1beta1GroundingChunkMaps.fromJson(core.Map json_)
    : this(
        placeAnswerSources:
            json_.containsKey('placeAnswerSources')
                ? GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources.fromJson(
                  json_['placeAnswerSources']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        placeId: json_['placeId'] as core.String?,
        text: json_['text'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (placeAnswerSources != null) 'placeAnswerSources': placeAnswerSources!,
    if (placeId != null) 'placeId': placeId!,
    if (text != null) 'text': text!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Sources used to generate the place answer.
class GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources {
  /// A link where users can flag a problem with the generated answer.
  core.String? flagContentUri;

  /// Snippets of reviews that are used to generate the answer.
  core.List<
    GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
  >?
  reviewSnippets;

  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources({
    this.flagContentUri,
    this.reviewSnippets,
  });

  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources.fromJson(
    core.Map json_,
  ) : this(
        flagContentUri: json_['flagContentUri'] as core.String?,
        reviewSnippets:
            (json_['reviewSnippets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (flagContentUri != null) 'flagContentUri': flagContentUri!,
    if (reviewSnippets != null) 'reviewSnippets': reviewSnippets!,
  };
}

/// Author attribution for a photo or review.
typedef GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution =
    $AuthorAttribution;

/// Encapsulates a review snippet.
class GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet {
  /// This review's author.
  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution?
  authorAttribution;

  /// A link where users can flag a problem with the review.
  core.String? flagContentUri;

  /// A link to show the review on Google Maps.
  core.String? googleMapsUri;

  /// A string of formatted recent time, expressing the review time relative to
  /// the current time in a form appropriate for the language and country.
  core.String? relativePublishTimeDescription;

  /// A reference representing this place review which may be used to look up
  /// this place review again.
  core.String? review;

  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet({
    this.authorAttribution,
    this.flagContentUri,
    this.googleMapsUri,
    this.relativePublishTimeDescription,
    this.review,
  });

  GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet.fromJson(
    core.Map json_,
  ) : this(
        authorAttribution:
            json_.containsKey('authorAttribution')
                ? GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesAuthorAttribution.fromJson(
                  json_['authorAttribution']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        flagContentUri: json_['flagContentUri'] as core.String?,
        googleMapsUri: json_['googleMapsUri'] as core.String?,
        relativePublishTimeDescription:
            json_['relativePublishTimeDescription'] as core.String?,
        review: json_['review'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authorAttribution != null) 'authorAttribution': authorAttribution!,
    if (flagContentUri != null) 'flagContentUri': flagContentUri!,
    if (googleMapsUri != null) 'googleMapsUri': googleMapsUri!,
    if (relativePublishTimeDescription != null)
      'relativePublishTimeDescription': relativePublishTimeDescription!,
    if (review != null) 'review': review!,
  };
}

/// Chunk from context retrieved by the retrieval tools.
class GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext {
  /// Additional context for the RAG retrieval result.
  ///
  /// This is only populated when using the RAG retrieval tool.
  GoogleCloudAiplatformV1beta1RagChunk? ragChunk;

  /// Text of the attribution.
  core.String? text;

  /// Title of the attribution.
  core.String? title;

  /// URI reference of the attribution.
  core.String? uri;

  GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext({
    this.ragChunk,
    this.text,
    this.title,
    this.uri,
  });

  GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext.fromJson(
    core.Map json_,
  ) : this(
        ragChunk:
            json_.containsKey('ragChunk')
                ? GoogleCloudAiplatformV1beta1RagChunk.fromJson(
                  json_['ragChunk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ragChunk != null) 'ragChunk': ragChunk!,
    if (text != null) 'text': text!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Chunk from the web.
typedef GoogleCloudAiplatformV1beta1GroundingChunkWeb = $GroundingChunkWeb;

/// Metadata returned to client when grounding is enabled.
class GoogleCloudAiplatformV1beta1GroundingMetadata {
  /// Resource name of the Google Maps widget context token to be used with the
  /// PlacesContextElement widget to render contextual data.
  ///
  /// This is populated only for Google Maps grounding.
  ///
  /// Optional. Output only.
  core.String? googleMapsWidgetContextToken;

  /// List of supporting references retrieved from specified grounding source.
  core.List<GoogleCloudAiplatformV1beta1GroundingChunk>? groundingChunks;

  /// List of grounding support.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1GroundingSupport>? groundingSupports;

  /// Retrieval metadata.
  ///
  /// Optional. Output only.
  GoogleCloudAiplatformV1beta1RetrievalMetadata? retrievalMetadata;

  /// Queries executed by the retrieval tools.
  ///
  /// Optional.
  core.List<core.String>? retrievalQueries;

  /// Google search entry for the following-up web searches.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1SearchEntryPoint? searchEntryPoint;

  /// Web search queries for the following-up web search.
  ///
  /// Optional.
  core.List<core.String>? webSearchQueries;

  GoogleCloudAiplatformV1beta1GroundingMetadata({
    this.googleMapsWidgetContextToken,
    this.groundingChunks,
    this.groundingSupports,
    this.retrievalMetadata,
    this.retrievalQueries,
    this.searchEntryPoint,
    this.webSearchQueries,
  });

  GoogleCloudAiplatformV1beta1GroundingMetadata.fromJson(core.Map json_)
    : this(
        googleMapsWidgetContextToken:
            json_['googleMapsWidgetContextToken'] as core.String?,
        groundingChunks:
            (json_['groundingChunks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1GroundingChunk.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        groundingSupports:
            (json_['groundingSupports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1GroundingSupport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        retrievalMetadata:
            json_.containsKey('retrievalMetadata')
                ? GoogleCloudAiplatformV1beta1RetrievalMetadata.fromJson(
                  json_['retrievalMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retrievalQueries:
            (json_['retrievalQueries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        searchEntryPoint:
            json_.containsKey('searchEntryPoint')
                ? GoogleCloudAiplatformV1beta1SearchEntryPoint.fromJson(
                  json_['searchEntryPoint']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        webSearchQueries:
            (json_['webSearchQueries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleMapsWidgetContextToken != null)
      'googleMapsWidgetContextToken': googleMapsWidgetContextToken!,
    if (groundingChunks != null) 'groundingChunks': groundingChunks!,
    if (groundingSupports != null) 'groundingSupports': groundingSupports!,
    if (retrievalMetadata != null) 'retrievalMetadata': retrievalMetadata!,
    if (retrievalQueries != null) 'retrievalQueries': retrievalQueries!,
    if (searchEntryPoint != null) 'searchEntryPoint': searchEntryPoint!,
    if (webSearchQueries != null) 'webSearchQueries': webSearchQueries!,
  };
}

/// Grounding support.
class GoogleCloudAiplatformV1beta1GroundingSupport {
  /// Confidence score of the support references.
  ///
  /// Ranges from 0 to 1. 1 is the most confident. For Gemini 2.0 and before,
  /// this list must have the same size as the grounding_chunk_indices. For
  /// Gemini 2.5 and after, this list will be empty and should be ignored.
  core.List<core.double>? confidenceScores;

  /// A list of indices (into 'grounding_chunk') specifying the citations
  /// associated with the claim.
  ///
  /// For instance \[1,3,4\] means that grounding_chunk\[1\],
  /// grounding_chunk\[3\], grounding_chunk\[4\] are the retrieved content
  /// attributed to the claim.
  core.List<core.int>? groundingChunkIndices;

  /// Segment of the content this support belongs to.
  GoogleCloudAiplatformV1beta1Segment? segment;

  GoogleCloudAiplatformV1beta1GroundingSupport({
    this.confidenceScores,
    this.groundingChunkIndices,
    this.segment,
  });

  GoogleCloudAiplatformV1beta1GroundingSupport.fromJson(core.Map json_)
    : this(
        confidenceScores:
            (json_['confidenceScores'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
        groundingChunkIndices:
            (json_['groundingChunkIndices'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        segment:
            json_.containsKey('segment')
                ? GoogleCloudAiplatformV1beta1Segment.fromJson(
                  json_['segment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidenceScores != null) 'confidenceScores': confidenceScores!,
    if (groundingChunkIndices != null)
      'groundingChunkIndices': groundingChunkIndices!,
    if (segment != null) 'segment': segment!,
  };
}

/// Logprobs Result
class GoogleCloudAiplatformV1beta1LogprobsResult {
  /// Length = total number of decoding steps.
  ///
  /// The chosen candidates may or may not be in top_candidates.
  core.List<GoogleCloudAiplatformV1beta1LogprobsResultCandidate>?
  chosenCandidates;

  /// Length = total number of decoding steps.
  core.List<GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates>?
  topCandidates;

  GoogleCloudAiplatformV1beta1LogprobsResult({
    this.chosenCandidates,
    this.topCandidates,
  });

  GoogleCloudAiplatformV1beta1LogprobsResult.fromJson(core.Map json_)
    : this(
        chosenCandidates:
            (json_['chosenCandidates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1LogprobsResultCandidate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        topCandidates:
            (json_['topCandidates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chosenCandidates != null) 'chosenCandidates': chosenCandidates!,
    if (topCandidates != null) 'topCandidates': topCandidates!,
  };
}

/// Candidate for the logprobs token and score.
typedef GoogleCloudAiplatformV1beta1LogprobsResultCandidate =
    $LogprobsResultCandidate;

/// Candidates with top log probabilities at each decoding step.
class GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates {
  /// Sorted by log probability in descending order.
  core.List<GoogleCloudAiplatformV1beta1LogprobsResultCandidate>? candidates;

  GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates({this.candidates});

  GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates.fromJson(
    core.Map json_,
  ) : this(
        candidates:
            (json_['candidates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1LogprobsResultCandidate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (candidates != null) 'candidates': candidates!,
  };
}

/// Represents token counting info for a single modality.
typedef GoogleCloudAiplatformV1beta1ModalityTokenCount = $ModalityTokenCount;

/// A datatype containing media that is part of a multi-part `Content` message.
///
/// A `Part` consists of data which has an associated datatype. A `Part` can
/// only contain one of the accepted types in `Part.data`. A `Part` must have a
/// fixed IANA MIME type identifying the type and subtype of the media if
/// `inline_data` or `file_data` field is filled with raw bytes.
class GoogleCloudAiplatformV1beta1Part {
  /// Result of executing the \[ExecutableCode\].
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1CodeExecutionResult? codeExecutionResult;

  /// Code generated by the model that is meant to be executed.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1ExecutableCode? executableCode;

  /// URI based data.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1FileData? fileData;

  /// A predicted \[FunctionCall\] returned from the model that contains a
  /// string representing the \[FunctionDeclaration.name\] with the parameters
  /// and their values.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1FunctionCall? functionCall;

  /// The result output of a \[FunctionCall\] that contains a string
  /// representing the \[FunctionDeclaration.name\] and a structured JSON object
  /// containing any output from the function call.
  ///
  /// It is used as context to the model.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1FunctionResponse? functionResponse;

  /// Inlined bytes data.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Blob? inlineData;

  /// Text part (can be code).
  ///
  /// Optional.
  core.String? text;

  /// Indicates if the part is thought from the model.
  ///
  /// Optional.
  core.bool? thought;

  /// An opaque signature for the thought so it can be reused in subsequent
  /// requests.
  ///
  /// Optional.
  core.String? thoughtSignature;
  core.List<core.int> get thoughtSignatureAsBytes =>
      convert.base64.decode(thoughtSignature!);

  set thoughtSignatureAsBytes(core.List<core.int> bytes_) {
    thoughtSignature = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Video metadata.
  ///
  /// The metadata should only be specified while the video data is presented in
  /// inline_data or file_data.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1VideoMetadata? videoMetadata;

  GoogleCloudAiplatformV1beta1Part({
    this.codeExecutionResult,
    this.executableCode,
    this.fileData,
    this.functionCall,
    this.functionResponse,
    this.inlineData,
    this.text,
    this.thought,
    this.thoughtSignature,
    this.videoMetadata,
  });

  GoogleCloudAiplatformV1beta1Part.fromJson(core.Map json_)
    : this(
        codeExecutionResult:
            json_.containsKey('codeExecutionResult')
                ? GoogleCloudAiplatformV1beta1CodeExecutionResult.fromJson(
                  json_['codeExecutionResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executableCode:
            json_.containsKey('executableCode')
                ? GoogleCloudAiplatformV1beta1ExecutableCode.fromJson(
                  json_['executableCode']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileData:
            json_.containsKey('fileData')
                ? GoogleCloudAiplatformV1beta1FileData.fromJson(
                  json_['fileData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        functionCall:
            json_.containsKey('functionCall')
                ? GoogleCloudAiplatformV1beta1FunctionCall.fromJson(
                  json_['functionCall'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        functionResponse:
            json_.containsKey('functionResponse')
                ? GoogleCloudAiplatformV1beta1FunctionResponse.fromJson(
                  json_['functionResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineData:
            json_.containsKey('inlineData')
                ? GoogleCloudAiplatformV1beta1Blob.fromJson(
                  json_['inlineData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
        thought: json_['thought'] as core.bool?,
        thoughtSignature: json_['thoughtSignature'] as core.String?,
        videoMetadata:
            json_.containsKey('videoMetadata')
                ? GoogleCloudAiplatformV1beta1VideoMetadata.fromJson(
                  json_['videoMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeExecutionResult != null)
      'codeExecutionResult': codeExecutionResult!,
    if (executableCode != null) 'executableCode': executableCode!,
    if (fileData != null) 'fileData': fileData!,
    if (functionCall != null) 'functionCall': functionCall!,
    if (functionResponse != null) 'functionResponse': functionResponse!,
    if (inlineData != null) 'inlineData': inlineData!,
    if (text != null) 'text': text!,
    if (thought != null) 'thought': thought!,
    if (thoughtSignature != null) 'thoughtSignature': thoughtSignature!,
    if (videoMetadata != null) 'videoMetadata': videoMetadata!,
  };
}

/// The configuration for the prebuilt speaker to use.
typedef GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig = $PrebuiltVoiceConfig;

/// A RagChunk includes the content of a chunk of a RagFile, and associated
/// metadata.
class GoogleCloudAiplatformV1beta1RagChunk {
  /// If populated, represents where the chunk starts and ends in the document.
  GoogleCloudAiplatformV1beta1RagChunkPageSpan? pageSpan;

  /// The content of the chunk.
  core.String? text;

  GoogleCloudAiplatformV1beta1RagChunk({this.pageSpan, this.text});

  GoogleCloudAiplatformV1beta1RagChunk.fromJson(core.Map json_)
    : this(
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudAiplatformV1beta1RagChunkPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (text != null) 'text': text!,
  };
}

/// Represents where the chunk starts and ends in the document.
typedef GoogleCloudAiplatformV1beta1RagChunkPageSpan = $RagChunkPageSpan;

/// Specifies the context retrieval config.
class GoogleCloudAiplatformV1beta1RagRetrievalConfig {
  /// Config for filters.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter? filter;

  /// Config for Hybrid Search.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch? hybridSearch;

  /// Config for ranking and reranking.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking? ranking;

  /// The number of contexts to retrieve.
  ///
  /// Optional.
  core.int? topK;

  GoogleCloudAiplatformV1beta1RagRetrievalConfig({
    this.filter,
    this.hybridSearch,
    this.ranking,
    this.topK,
  });

  GoogleCloudAiplatformV1beta1RagRetrievalConfig.fromJson(core.Map json_)
    : this(
        filter:
            json_.containsKey('filter')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hybridSearch:
            json_.containsKey('hybridSearch')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch.fromJson(
                  json_['hybridSearch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ranking:
            json_.containsKey('ranking')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking.fromJson(
                  json_['ranking'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        topK: json_['topK'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (hybridSearch != null) 'hybridSearch': hybridSearch!,
    if (ranking != null) 'ranking': ranking!,
    if (topK != null) 'topK': topK!,
  };
}

/// Config for filters.
typedef GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter =
    $RagRetrievalConfigFilter;

/// Config for Hybrid Search.
typedef GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch = $Shared09;

/// Config for ranking and reranking.
class GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking {
  /// Config for LlmRanker.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker? llmRanker;

  /// Config for Rank Service.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService? rankService;

  GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking({
    this.llmRanker,
    this.rankService,
  });

  GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking.fromJson(core.Map json_)
    : this(
        llmRanker:
            json_.containsKey('llmRanker')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker.fromJson(
                  json_['llmRanker'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rankService:
            json_.containsKey('rankService')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService.fromJson(
                  json_['rankService'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (llmRanker != null) 'llmRanker': llmRanker!,
    if (rankService != null) 'rankService': rankService!,
  };
}

/// Config for LlmRanker.
typedef GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker =
    $RagRetrievalConfigRankingLlmRanker;

/// Config for Rank Service.
typedef GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService =
    $RagRetrievalConfigRankingRankService;

/// Defines a retrieval tool that model can call to access external knowledge.
class GoogleCloudAiplatformV1beta1Retrieval {
  /// This option is no longer supported.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? disableAttribution;

  /// Use data source powered by external API for grounding.
  GoogleCloudAiplatformV1beta1ExternalApi? externalApi;

  /// Set to use data source powered by Vertex AI Search.
  GoogleCloudAiplatformV1beta1VertexAISearch? vertexAiSearch;

  /// Set to use data source powered by Vertex RAG store.
  ///
  /// User data is uploaded via the VertexRagDataService.
  GoogleCloudAiplatformV1beta1VertexRagStore? vertexRagStore;

  GoogleCloudAiplatformV1beta1Retrieval({
    this.disableAttribution,
    this.externalApi,
    this.vertexAiSearch,
    this.vertexRagStore,
  });

  GoogleCloudAiplatformV1beta1Retrieval.fromJson(core.Map json_)
    : this(
        disableAttribution: json_['disableAttribution'] as core.bool?,
        externalApi:
            json_.containsKey('externalApi')
                ? GoogleCloudAiplatformV1beta1ExternalApi.fromJson(
                  json_['externalApi'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vertexAiSearch:
            json_.containsKey('vertexAiSearch')
                ? GoogleCloudAiplatformV1beta1VertexAISearch.fromJson(
                  json_['vertexAiSearch']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vertexRagStore:
            json_.containsKey('vertexRagStore')
                ? GoogleCloudAiplatformV1beta1VertexRagStore.fromJson(
                  json_['vertexRagStore']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disableAttribution != null) 'disableAttribution': disableAttribution!,
    if (externalApi != null) 'externalApi': externalApi!,
    if (vertexAiSearch != null) 'vertexAiSearch': vertexAiSearch!,
    if (vertexRagStore != null) 'vertexRagStore': vertexRagStore!,
  };
}

/// Retrieval config.
class GoogleCloudAiplatformV1beta1RetrievalConfig {
  /// The language code of the user.
  core.String? languageCode;

  /// The location of the user.
  LatLng? latLng;

  GoogleCloudAiplatformV1beta1RetrievalConfig({this.languageCode, this.latLng});

  GoogleCloudAiplatformV1beta1RetrievalConfig.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        latLng:
            json_.containsKey('latLng')
                ? LatLng.fromJson(
                  json_['latLng'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCode != null) 'languageCode': languageCode!,
    if (latLng != null) 'latLng': latLng!,
  };
}

/// Metadata related to retrieval in the grounding flow.
typedef GoogleCloudAiplatformV1beta1RetrievalMetadata = $RetrievalMetadata;

/// Safety rating corresponding to the generated content.
typedef GoogleCloudAiplatformV1beta1SafetyRating = $SafetyRating00;

/// Safety settings.
typedef GoogleCloudAiplatformV1beta1SafetySetting = $SafetySetting;

/// Schema is used to define the format of input/output data.
///
/// Represents a select subset of an
/// [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#schema-object).
/// More fields may be added in the future as needed.
class GoogleCloudAiplatformV1beta1Schema {
  /// Can either be a boolean or an object; controls the presence of additional
  /// properties.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? additionalProperties;

  /// The value should be validated against any (one or more) of the subschemas
  /// in the list.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1Schema>? anyOf;

  /// Default value of the data.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? default_;

  /// A map of definitions for use by `ref` Only allowed at the root of the
  /// schema.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudAiplatformV1beta1Schema>? defs;

  /// The description of the data.
  ///
  /// Optional.
  core.String? description;

  /// Possible values of the element of primitive type with enum format.
  ///
  /// Examples: 1. We can define direction as : {type:STRING, format:enum,
  /// enum:\["EAST", NORTH", "SOUTH", "WEST"\]} 2. We can define apartment
  /// number as : {type:INTEGER, format:enum, enum:\["101", "201", "301"\]}
  ///
  /// Optional.
  core.List<core.String>? enum_;

  /// Example of the object.
  ///
  /// Will only populated when the object is the root.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? example;

  /// The format of the data.
  ///
  /// Supported formats: for NUMBER type: "float", "double" for INTEGER type:
  /// "int32", "int64" for STRING type: "email", "byte", etc
  ///
  /// Optional.
  core.String? format;

  /// SCHEMA FIELDS FOR TYPE ARRAY Schema of the elements of Type.ARRAY.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Schema? items;

  /// Maximum number of the elements for Type.ARRAY.
  ///
  /// Optional.
  core.String? maxItems;

  /// Maximum length of the Type.STRING
  ///
  /// Optional.
  core.String? maxLength;

  /// Maximum number of the properties for Type.OBJECT.
  ///
  /// Optional.
  core.String? maxProperties;

  /// Maximum value of the Type.INTEGER and Type.NUMBER
  ///
  /// Optional.
  core.double? maximum;

  /// Minimum number of the elements for Type.ARRAY.
  ///
  /// Optional.
  core.String? minItems;

  /// SCHEMA FIELDS FOR TYPE STRING Minimum length of the Type.STRING
  ///
  /// Optional.
  core.String? minLength;

  /// Minimum number of the properties for Type.OBJECT.
  ///
  /// Optional.
  core.String? minProperties;

  /// SCHEMA FIELDS FOR TYPE INTEGER and NUMBER Minimum value of the
  /// Type.INTEGER and Type.NUMBER
  ///
  /// Optional.
  core.double? minimum;

  /// Indicates if the value may be null.
  ///
  /// Optional.
  core.bool? nullable;

  /// Pattern of the Type.STRING to restrict a string to a regular expression.
  ///
  /// Optional.
  core.String? pattern;

  /// SCHEMA FIELDS FOR TYPE OBJECT Properties of Type.OBJECT.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudAiplatformV1beta1Schema>? properties;

  /// The order of the properties.
  ///
  /// Not a standard field in open api spec. Only used to support the order of
  /// the properties.
  ///
  /// Optional.
  core.List<core.String>? propertyOrdering;

  /// Allows indirect references between schema nodes.
  ///
  /// The value should be a valid reference to a child of the root `defs`. For
  /// example, the following schema defines a reference to a schema node named
  /// "Pet": type: object properties: pet: ref: #/defs/Pet defs: Pet: type:
  /// object properties: name: type: string The value of the "pet" property is a
  /// reference to the schema node named "Pet". See details in
  /// https://json-schema.org/understanding-json-schema/structuring
  ///
  /// Optional.
  core.String? ref;

  /// Required properties of Type.OBJECT.
  ///
  /// Optional.
  core.List<core.String>? required;

  /// The title of the Schema.
  ///
  /// Optional.
  core.String? title;

  /// The type of the data.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified, should not be used.
  /// - "STRING" : OpenAPI string type
  /// - "NUMBER" : OpenAPI number type
  /// - "INTEGER" : OpenAPI integer type
  /// - "BOOLEAN" : OpenAPI boolean type
  /// - "ARRAY" : OpenAPI array type
  /// - "OBJECT" : OpenAPI object type
  /// - "NULL" : Null type
  core.String? type;

  GoogleCloudAiplatformV1beta1Schema({
    this.additionalProperties,
    this.anyOf,
    this.default_,
    this.defs,
    this.description,
    this.enum_,
    this.example,
    this.format,
    this.items,
    this.maxItems,
    this.maxLength,
    this.maxProperties,
    this.maximum,
    this.minItems,
    this.minLength,
    this.minProperties,
    this.minimum,
    this.nullable,
    this.pattern,
    this.properties,
    this.propertyOrdering,
    this.ref,
    this.required,
    this.title,
    this.type,
  });

  GoogleCloudAiplatformV1beta1Schema.fromJson(core.Map json_)
    : this(
        additionalProperties: json_['additionalProperties'],
        anyOf:
            (json_['anyOf'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1Schema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        default_: json_['default'],
        defs: (json_['defs'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            GoogleCloudAiplatformV1beta1Schema.fromJson(
              value as core.Map<core.String, core.dynamic>,
            ),
          ),
        ),
        description: json_['description'] as core.String?,
        enum_:
            (json_['enum'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        example: json_['example'],
        format: json_['format'] as core.String?,
        items:
            json_.containsKey('items')
                ? GoogleCloudAiplatformV1beta1Schema.fromJson(
                  json_['items'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxItems: json_['maxItems'] as core.String?,
        maxLength: json_['maxLength'] as core.String?,
        maxProperties: json_['maxProperties'] as core.String?,
        maximum: (json_['maximum'] as core.num?)?.toDouble(),
        minItems: json_['minItems'] as core.String?,
        minLength: json_['minLength'] as core.String?,
        minProperties: json_['minProperties'] as core.String?,
        minimum: (json_['minimum'] as core.num?)?.toDouble(),
        nullable: json_['nullable'] as core.bool?,
        pattern: json_['pattern'] as core.String?,
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudAiplatformV1beta1Schema.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        propertyOrdering:
            (json_['propertyOrdering'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ref: json_['ref'] as core.String?,
        required:
            (json_['required'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalProperties != null)
      'additionalProperties': additionalProperties!,
    if (anyOf != null) 'anyOf': anyOf!,
    if (default_ != null) 'default': default_!,
    if (defs != null) 'defs': defs!,
    if (description != null) 'description': description!,
    if (enum_ != null) 'enum': enum_!,
    if (example != null) 'example': example!,
    if (format != null) 'format': format!,
    if (items != null) 'items': items!,
    if (maxItems != null) 'maxItems': maxItems!,
    if (maxLength != null) 'maxLength': maxLength!,
    if (maxProperties != null) 'maxProperties': maxProperties!,
    if (maximum != null) 'maximum': maximum!,
    if (minItems != null) 'minItems': minItems!,
    if (minLength != null) 'minLength': minLength!,
    if (minProperties != null) 'minProperties': minProperties!,
    if (minimum != null) 'minimum': minimum!,
    if (nullable != null) 'nullable': nullable!,
    if (pattern != null) 'pattern': pattern!,
    if (properties != null) 'properties': properties!,
    if (propertyOrdering != null) 'propertyOrdering': propertyOrdering!,
    if (ref != null) 'ref': ref!,
    if (required != null) 'required': required!,
    if (title != null) 'title': title!,
    if (type != null) 'type': type!,
  };
}

/// Google search entry point.
typedef GoogleCloudAiplatformV1beta1SearchEntryPoint = $SearchEntryPoint;

/// Segment of the content.
typedef GoogleCloudAiplatformV1beta1Segment = $Segment00;

/// The speech generation config.
class GoogleCloudAiplatformV1beta1SpeechConfig {
  /// Language code (ISO 639.
  ///
  /// e.g. en-US) for the speech synthesization.
  ///
  /// Optional.
  core.String? languageCode;

  /// The configuration for the speaker to use.
  GoogleCloudAiplatformV1beta1VoiceConfig? voiceConfig;

  GoogleCloudAiplatformV1beta1SpeechConfig({
    this.languageCode,
    this.voiceConfig,
  });

  GoogleCloudAiplatformV1beta1SpeechConfig.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        voiceConfig:
            json_.containsKey('voiceConfig')
                ? GoogleCloudAiplatformV1beta1VoiceConfig.fromJson(
                  json_['voiceConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCode != null) 'languageCode': languageCode!,
    if (voiceConfig != null) 'voiceConfig': voiceConfig!,
  };
}

/// Tool details that the model may use to generate response.
///
/// A `Tool` is a piece of code that enables the system to interact with
/// external systems to perform an action, or set of actions, outside of
/// knowledge and scope of the model. A Tool object should contain exactly one
/// type of Tool (e.g FunctionDeclaration, Retrieval or GoogleSearchRetrieval).
class GoogleCloudAiplatformV1beta1Tool {
  /// CodeExecution tool type.
  ///
  /// Enables the model to execute code as part of generation.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1ToolCodeExecution? codeExecution;

  /// Tool to support searching public web data, powered by Vertex AI Search and
  /// Sec4 compliance.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1EnterpriseWebSearch? enterpriseWebSearch;

  /// Function tool type.
  ///
  /// One or more function declarations to be passed to the model along with the
  /// current user query. Model may decide to call a subset of these functions
  /// by populating FunctionCall in the response. User should provide a
  /// FunctionResponse for each function call in the next turn. Based on the
  /// function responses, Model will generate the final response back to the
  /// user. Maximum 512 function declarations can be provided.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1FunctionDeclaration>?
  functionDeclarations;

  /// GoogleMaps tool type.
  ///
  /// Tool to support Google Maps in Model.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GoogleMaps? googleMaps;

  /// GoogleSearch tool type.
  ///
  /// Tool to support Google Search in Model. Powered by Google.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1ToolGoogleSearch? googleSearch;

  /// GoogleSearchRetrieval tool type.
  ///
  /// Specialized retrieval tool that is powered by Google search.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1GoogleSearchRetrieval? googleSearchRetrieval;

  /// Retrieval tool type.
  ///
  /// System will always execute the provided retrieval tool(s) to get external
  /// knowledge to answer the prompt. Retrieval results are presented to the
  /// model for generation.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1Retrieval? retrieval;

  /// Tool to support URL context retrieval.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1UrlContext? urlContext;

  GoogleCloudAiplatformV1beta1Tool({
    this.codeExecution,
    this.enterpriseWebSearch,
    this.functionDeclarations,
    this.googleMaps,
    this.googleSearch,
    this.googleSearchRetrieval,
    this.retrieval,
    this.urlContext,
  });

  GoogleCloudAiplatformV1beta1Tool.fromJson(core.Map json_)
    : this(
        codeExecution:
            json_.containsKey('codeExecution')
                ? GoogleCloudAiplatformV1beta1ToolCodeExecution.fromJson(
                  json_['codeExecution'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enterpriseWebSearch:
            json_.containsKey('enterpriseWebSearch')
                ? GoogleCloudAiplatformV1beta1EnterpriseWebSearch.fromJson(
                  json_['enterpriseWebSearch']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        functionDeclarations:
            (json_['functionDeclarations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1FunctionDeclaration.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        googleMaps:
            json_.containsKey('googleMaps')
                ? GoogleCloudAiplatformV1beta1GoogleMaps.fromJson(
                  json_['googleMaps'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleSearch:
            json_.containsKey('googleSearch')
                ? GoogleCloudAiplatformV1beta1ToolGoogleSearch.fromJson(
                  json_['googleSearch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleSearchRetrieval:
            json_.containsKey('googleSearchRetrieval')
                ? GoogleCloudAiplatformV1beta1GoogleSearchRetrieval.fromJson(
                  json_['googleSearchRetrieval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retrieval:
            json_.containsKey('retrieval')
                ? GoogleCloudAiplatformV1beta1Retrieval.fromJson(
                  json_['retrieval'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        urlContext:
            json_.containsKey('urlContext')
                ? GoogleCloudAiplatformV1beta1UrlContext.fromJson(
                  json_['urlContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeExecution != null) 'codeExecution': codeExecution!,
    if (enterpriseWebSearch != null)
      'enterpriseWebSearch': enterpriseWebSearch!,
    if (functionDeclarations != null)
      'functionDeclarations': functionDeclarations!,
    if (googleMaps != null) 'googleMaps': googleMaps!,
    if (googleSearch != null) 'googleSearch': googleSearch!,
    if (googleSearchRetrieval != null)
      'googleSearchRetrieval': googleSearchRetrieval!,
    if (retrieval != null) 'retrieval': retrieval!,
    if (urlContext != null) 'urlContext': urlContext!,
  };
}

/// Tool that executes code generated by the model, and automatically returns
/// the result to the model.
///
/// See also \[ExecutableCode\]and \[CodeExecutionResult\] which are input and
/// output to this tool.
typedef GoogleCloudAiplatformV1beta1ToolCodeExecution = $Empty;

/// Tool config.
///
/// This config is shared for all tools provided in the request.
class GoogleCloudAiplatformV1beta1ToolConfig {
  /// Function calling config.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1FunctionCallingConfig? functionCallingConfig;

  /// Retrieval config.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RetrievalConfig? retrievalConfig;

  GoogleCloudAiplatformV1beta1ToolConfig({
    this.functionCallingConfig,
    this.retrievalConfig,
  });

  GoogleCloudAiplatformV1beta1ToolConfig.fromJson(core.Map json_)
    : this(
        functionCallingConfig:
            json_.containsKey('functionCallingConfig')
                ? GoogleCloudAiplatformV1beta1FunctionCallingConfig.fromJson(
                  json_['functionCallingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retrievalConfig:
            json_.containsKey('retrievalConfig')
                ? GoogleCloudAiplatformV1beta1RetrievalConfig.fromJson(
                  json_['retrievalConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (functionCallingConfig != null)
      'functionCallingConfig': functionCallingConfig!,
    if (retrievalConfig != null) 'retrievalConfig': retrievalConfig!,
  };
}

/// GoogleSearch tool type.
///
/// Tool to support Google Search in Model. Powered by Google.
typedef GoogleCloudAiplatformV1beta1ToolGoogleSearch = $ToolGoogleSearch;

/// Tool to support URL context.
typedef GoogleCloudAiplatformV1beta1UrlContext = $Empty;

/// Metadata related to url context retrieval tool.
class GoogleCloudAiplatformV1beta1UrlContextMetadata {
  /// List of url context.
  ///
  /// Output only.
  core.List<GoogleCloudAiplatformV1beta1UrlMetadata>? urlMetadata;

  GoogleCloudAiplatformV1beta1UrlContextMetadata({this.urlMetadata});

  GoogleCloudAiplatformV1beta1UrlContextMetadata.fromJson(core.Map json_)
    : this(
        urlMetadata:
            (json_['urlMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudAiplatformV1beta1UrlMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (urlMetadata != null) 'urlMetadata': urlMetadata!,
  };
}

/// Context of the a single url retrieval.
typedef GoogleCloudAiplatformV1beta1UrlMetadata = $UrlMetadata;

/// Retrieve from Vertex AI Search datastore or engine for grounding.
///
/// datastore and engine are mutually exclusive. See
/// https://cloud.google.com/products/agent-builder
class GoogleCloudAiplatformV1beta1VertexAISearch {
  /// Specifications that define the specific DataStores to be searched, along
  /// with configurations for those data stores.
  ///
  /// This is only considered for Engines with multiple data stores. It should
  /// only be set if engine is used.
  core.List<GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec>?
  dataStoreSpecs;

  /// Fully-qualified Vertex AI Search data store resource ID.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
  ///
  /// Optional.
  core.String? datastore;

  /// Fully-qualified Vertex AI Search engine resource ID.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  ///
  /// Optional.
  core.String? engine;

  /// Filter strings to be passed to the search API.
  ///
  /// Optional.
  core.String? filter;

  /// Number of search results to return per query.
  ///
  /// The default value is 10. The maximumm allowed value is 10.
  ///
  /// Optional.
  core.int? maxResults;

  GoogleCloudAiplatformV1beta1VertexAISearch({
    this.dataStoreSpecs,
    this.datastore,
    this.engine,
    this.filter,
    this.maxResults,
  });

  GoogleCloudAiplatformV1beta1VertexAISearch.fromJson(core.Map json_)
    : this(
        dataStoreSpecs:
            (json_['dataStoreSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        datastore: json_['datastore'] as core.String?,
        engine: json_['engine'] as core.String?,
        filter: json_['filter'] as core.String?,
        maxResults: json_['maxResults'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStoreSpecs != null) 'dataStoreSpecs': dataStoreSpecs!,
    if (datastore != null) 'datastore': datastore!,
    if (engine != null) 'engine': engine!,
    if (filter != null) 'filter': filter!,
    if (maxResults != null) 'maxResults': maxResults!,
  };
}

/// Define data stores within engine to filter on in a search call and
/// configurations for those data stores.
///
/// For more information, see
/// https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1#datastorespec
typedef GoogleCloudAiplatformV1beta1VertexAISearchDataStoreSpec =
    $VertexAISearchDataStoreSpec;

/// Retrieve from Vertex RAG Store for grounding.
class GoogleCloudAiplatformV1beta1VertexRagStore {
  /// Please use rag_resources instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? ragCorpora;

  /// The representation of the rag source.
  ///
  /// It can be used to specify corpus only or ragfiles. Currently only support
  /// one corpus or multiple files from one corpus. In the future we may open up
  /// multiple corpora support.
  ///
  /// Optional.
  core.List<GoogleCloudAiplatformV1beta1VertexRagStoreRagResource>?
  ragResources;

  /// The retrieval config for the Rag query.
  ///
  /// Optional.
  GoogleCloudAiplatformV1beta1RagRetrievalConfig? ragRetrievalConfig;

  /// Number of top k results to return from the selected corpora.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? similarityTopK;

  /// Currently only supported for Gemini Multimodal Live API.
  ///
  /// In Gemini Multimodal Live API, if `store_context` bool is specified,
  /// Gemini will leverage it to automatically memorize the interactions between
  /// the client and Gemini, and retrieve context when needed to augment the
  /// response generation for users' ongoing and future interactions.
  ///
  /// Optional.
  core.bool? storeContext;

  /// Only return results with vector distance smaller than the threshold.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.double? vectorDistanceThreshold;

  GoogleCloudAiplatformV1beta1VertexRagStore({
    this.ragCorpora,
    this.ragResources,
    this.ragRetrievalConfig,
    this.similarityTopK,
    this.storeContext,
    this.vectorDistanceThreshold,
  });

  GoogleCloudAiplatformV1beta1VertexRagStore.fromJson(core.Map json_)
    : this(
        ragCorpora:
            (json_['ragCorpora'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ragResources:
            (json_['ragResources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudAiplatformV1beta1VertexRagStoreRagResource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        ragRetrievalConfig:
            json_.containsKey('ragRetrievalConfig')
                ? GoogleCloudAiplatformV1beta1RagRetrievalConfig.fromJson(
                  json_['ragRetrievalConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        similarityTopK: json_['similarityTopK'] as core.int?,
        storeContext: json_['storeContext'] as core.bool?,
        vectorDistanceThreshold:
            (json_['vectorDistanceThreshold'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ragCorpora != null) 'ragCorpora': ragCorpora!,
    if (ragResources != null) 'ragResources': ragResources!,
    if (ragRetrievalConfig != null) 'ragRetrievalConfig': ragRetrievalConfig!,
    if (similarityTopK != null) 'similarityTopK': similarityTopK!,
    if (storeContext != null) 'storeContext': storeContext!,
    if (vectorDistanceThreshold != null)
      'vectorDistanceThreshold': vectorDistanceThreshold!,
  };
}

/// The definition of the Rag resource.
typedef GoogleCloudAiplatformV1beta1VertexRagStoreRagResource =
    $VertexRagStoreRagResource;

/// Metadata describes the input video content.
typedef GoogleCloudAiplatformV1beta1VideoMetadata = $VideoMetadata;

/// The configuration for the voice to use.
class GoogleCloudAiplatformV1beta1VoiceConfig {
  /// The configuration for the prebuilt voice to use.
  GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig? prebuiltVoiceConfig;

  GoogleCloudAiplatformV1beta1VoiceConfig({this.prebuiltVoiceConfig});

  GoogleCloudAiplatformV1beta1VoiceConfig.fromJson(core.Map json_)
    : this(
        prebuiltVoiceConfig:
            json_.containsKey('prebuiltVoiceConfig')
                ? GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig.fromJson(
                  json_['prebuiltVoiceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (prebuiltVoiceConfig != null)
      'prebuiltVoiceConfig': prebuiltVoiceConfig!,
  };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;
