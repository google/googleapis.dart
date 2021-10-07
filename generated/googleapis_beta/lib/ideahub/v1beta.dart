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

/// Idea Hub API - v1beta
///
/// For more information, see
/// <https://console.cloud.google.com/apis/library/ideahub.googleapis.com>
///
/// Create an instance of [IdeahubApi] to access these resources:
///
/// - [PlatformsResource]
///   - [PlatformsPropertiesResource]
///     - [PlatformsPropertiesIdeaStatesResource]
///     - [PlatformsPropertiesIdeasResource]
///     - [PlatformsPropertiesLocalesResource]
///     - [PlatformsPropertiesTopicStatesResource]
library ideahub.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class IdeahubApi {
  final commons.ApiRequester _requester;

  PlatformsResource get platforms => PlatformsResource(_requester);

  IdeahubApi(http.Client client,
      {core.String rootUrl = 'https://ideahub.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PlatformsResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesResource get properties =>
      PlatformsPropertiesResource(_requester);

  PlatformsResource(commons.ApiRequester client) : _requester = client;
}

class PlatformsPropertiesResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesIdeaStatesResource get ideaStates =>
      PlatformsPropertiesIdeaStatesResource(_requester);
  PlatformsPropertiesIdeasResource get ideas =>
      PlatformsPropertiesIdeasResource(_requester);
  PlatformsPropertiesLocalesResource get locales =>
      PlatformsPropertiesLocalesResource(_requester);
  PlatformsPropertiesTopicStatesResource get topicStates =>
      PlatformsPropertiesTopicStatesResource(_requester);

  PlatformsPropertiesResource(commons.ApiRequester client)
      : _requester = client;
}

class PlatformsPropertiesIdeaStatesResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesIdeaStatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Update an idea state resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Unique identifier for the idea state. Format:
  /// platforms/{platform}/properties/{property}/ideaStates/{idea_state}
  /// Value must have pattern
  /// `^platforms/\[^/\]+/properties/\[^/\]+/ideaStates/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSearchIdeahubV1betaIdeaState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSearchIdeahubV1betaIdeaState> patch(
    GoogleSearchIdeahubV1betaIdeaState request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleSearchIdeahubV1betaIdeaState.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsPropertiesIdeasResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesIdeasResource(commons.ApiRequester client)
      : _requester = client;

  /// List ideas for a given Creator and filter and sort options.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. If defined, specifies the creator for which to filter
  /// by. Format: publishers/{publisher}/properties/{property}
  /// Value must have pattern `^platforms/\[^/\]+/properties/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions are implicitly
  /// combined, as if the `AND` operator was always used. The `OR` operator is
  /// currently unsupported. * Supported functions: - `saved(bool)`: If set to
  /// true, fetches only saved ideas. If set to false, fetches all except saved
  /// ideas. Can't be simultaneously used with `dismissed(bool)`. -
  /// `dismissed(bool)`: If set to true, fetches only dismissed ideas. Can't be
  /// simultaneously used with `saved(bool)`. The `false` value is currently
  /// unsupported. Examples: * `saved(true)` * `saved(false)` *
  /// `dismissed(true)` The length of this field should be no more than 500
  /// characters.
  ///
  /// [orderBy] - Order semantics described below.
  ///
  /// [pageSize] - The maximum number of ideas per page. If unspecified, at most
  /// 10 ideas will be returned. The maximum value is 2000; values above 2000
  /// will be coerced to 2000.
  ///
  /// [pageToken] - Used to fetch next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSearchIdeahubV1betaListIdeasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSearchIdeahubV1betaListIdeasResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/ideas';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleSearchIdeahubV1betaListIdeasResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsPropertiesLocalesResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesLocalesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns which locales ideas are available in for a given Creator.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The web property to check idea availability for
  /// Format: platforms/{platform}/property/{property}
  /// Value must have pattern `^platforms/\[^/\]+/properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of locales to return. The service may
  /// return fewer than this value. If unspecified, at most 100 locales will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListAvailableLocales` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAvailableLocales`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSearchIdeahubV1betaListAvailableLocalesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSearchIdeahubV1betaListAvailableLocalesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/locales';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleSearchIdeahubV1betaListAvailableLocalesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsPropertiesTopicStatesResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesTopicStatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Update a topic state resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Unique identifier for the topic state. Format:
  /// platforms/{platform}/properties/{property}/topicStates/{topic_state}
  /// Value must have pattern
  /// `^platforms/\[^/\]+/properties/\[^/\]+/topicStates/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSearchIdeahubV1betaTopicState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSearchIdeahubV1betaTopicState> patch(
    GoogleSearchIdeahubV1betaTopicState request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleSearchIdeahubV1betaTopicState.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Represents locales that are available for a web property.
class GoogleSearchIdeahubV1betaAvailableLocale {
  /// A string in BCP 47 format, without a resource prefix.
  core.String? locale;

  /// A string in BCP 47 format, prefixed with the platform and property name,
  /// and "locales/".
  ///
  /// Format: platforms/{platform}/properties/{property}/locales/{locale}
  core.String? name;

  GoogleSearchIdeahubV1betaAvailableLocale({
    this.locale,
    this.name,
  });

  GoogleSearchIdeahubV1betaAvailableLocale.fromJson(core.Map _json)
      : this(
          locale: _json.containsKey('locale')
              ? _json['locale'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locale != null) 'locale': locale!,
        if (name != null) 'name': name!,
      };
}

/// A single Idea that we want to show the end user.
class GoogleSearchIdeahubV1betaIdea {
  /// Unique identifier for the idea.
  ///
  /// Format: ideas/{ideaId}
  core.String? name;

  /// The idea’s text.
  core.String? text;

  /// The Topics that match the idea.
  core.List<GoogleSearchIdeahubV1betaTopic>? topics;

  GoogleSearchIdeahubV1betaIdea({
    this.name,
    this.text,
    this.topics,
  });

  GoogleSearchIdeahubV1betaIdea.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          topics: _json.containsKey('topics')
              ? (_json['topics'] as core.List)
                  .map((value) => GoogleSearchIdeahubV1betaTopic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (text != null) 'text': text!,
        if (topics != null)
          'topics': topics!.map((value) => value.toJson()).toList(),
      };
}

/// Represents idea state specific to a web property.
class GoogleSearchIdeahubV1betaIdeaState {
  /// Whether the idea is dismissed.
  core.bool? dismissed;

  /// Unique identifier for the idea state.
  ///
  /// Format: platforms/{platform}/properties/{property}/ideaStates/{idea_state}
  core.String? name;

  /// Whether the idea is saved.
  core.bool? saved;

  GoogleSearchIdeahubV1betaIdeaState({
    this.dismissed,
    this.name,
    this.saved,
  });

  GoogleSearchIdeahubV1betaIdeaState.fromJson(core.Map _json)
      : this(
          dismissed: _json.containsKey('dismissed')
              ? _json['dismissed'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          saved:
              _json.containsKey('saved') ? _json['saved'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dismissed != null) 'dismissed': dismissed!,
        if (name != null) 'name': name!,
        if (saved != null) 'saved': saved!,
      };
}

/// Response for whether ideas are available for a given web property on a
/// platform, for the currently logged-in user.
class GoogleSearchIdeahubV1betaListAvailableLocalesResponse {
  /// Locales for which ideas are available for the given Creator.
  core.List<GoogleSearchIdeahubV1betaAvailableLocale>? availableLocales;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleSearchIdeahubV1betaListAvailableLocalesResponse({
    this.availableLocales,
    this.nextPageToken,
  });

  GoogleSearchIdeahubV1betaListAvailableLocalesResponse.fromJson(core.Map _json)
      : this(
          availableLocales: _json.containsKey('availableLocales')
              ? (_json['availableLocales'] as core.List)
                  .map((value) =>
                      GoogleSearchIdeahubV1betaAvailableLocale.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableLocales != null)
          'availableLocales':
              availableLocales!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class GoogleSearchIdeahubV1betaListIdeasResponse {
  /// Results for the ListIdeasRequest.
  core.List<GoogleSearchIdeahubV1betaIdea>? ideas;

  /// Used to fetch the next page in a subsequent request.
  core.String? nextPageToken;

  GoogleSearchIdeahubV1betaListIdeasResponse({
    this.ideas,
    this.nextPageToken,
  });

  GoogleSearchIdeahubV1betaListIdeasResponse.fromJson(core.Map _json)
      : this(
          ideas: _json.containsKey('ideas')
              ? (_json['ideas'] as core.List)
                  .map((value) => GoogleSearchIdeahubV1betaIdea.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ideas != null)
          'ideas': ideas!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a Topic umbrella for a list of questions that a Creator may want
/// to respond to.
class GoogleSearchIdeahubV1betaTopic {
  /// String displayed to the creator indicating the name of the Topic.
  core.String? displayName;

  /// The mID of the topic.
  core.String? mid;

  /// Unique identifier for the topic.
  ///
  /// Format: topics/{topic}
  core.String? name;

  GoogleSearchIdeahubV1betaTopic({
    this.displayName,
    this.mid,
    this.name,
  });

  GoogleSearchIdeahubV1betaTopic.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          mid: _json.containsKey('mid') ? _json['mid'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (mid != null) 'mid': mid!,
        if (name != null) 'name': name!,
      };
}

/// Represents topic state specific to a web property.
class GoogleSearchIdeahubV1betaTopicState {
  /// Whether the topic is dismissed.
  core.bool? dismissed;

  /// Unique identifier for the topic state.
  ///
  /// Format:
  /// platforms/{platform}/properties/{property}/topicStates/{topic_state}
  core.String? name;

  /// Whether the topic is saved.
  core.bool? saved;

  GoogleSearchIdeahubV1betaTopicState({
    this.dismissed,
    this.name,
    this.saved,
  });

  GoogleSearchIdeahubV1betaTopicState.fromJson(core.Map _json)
      : this(
          dismissed: _json.containsKey('dismissed')
              ? _json['dismissed'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          saved:
              _json.containsKey('saved') ? _json['saved'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dismissed != null) 'dismissed': dismissed!,
        if (name != null) 'name': name!,
        if (saved != null) 'saved': saved!,
      };
}
