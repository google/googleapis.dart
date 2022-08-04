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
/// This is an invitation-only API.
///
/// For more information, see
/// <https://console.cloud.google.com/apis/library/ideahub.googleapis.com>
///
/// Create an instance of [IdeahubApi] to access these resources:
///
/// - [PlatformsResource]
///   - [PlatformsPropertiesResource]
///     - [PlatformsPropertiesIdeaActivitiesResource]
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

/// This is an invitation-only API.
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

  PlatformsPropertiesIdeaActivitiesResource get ideaActivities =>
      PlatformsPropertiesIdeaActivitiesResource(_requester);
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

class PlatformsPropertiesIdeaActivitiesResource {
  final commons.ApiRequester _requester;

  PlatformsPropertiesIdeaActivitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an idea activity entry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this idea activity will be
  /// created. Format: platforms/{platform}/property/{property}
  /// Value must have pattern `^platforms/\[^/\]+/properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleSearchIdeahubV1betaIdeaActivity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleSearchIdeahubV1betaIdeaActivity> create(
    GoogleSearchIdeahubV1betaIdeaActivity request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/ideaActivities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleSearchIdeahubV1betaIdeaActivity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleSearchIdeahubV1betaIdeaState.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/ideas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSearchIdeahubV1betaListIdeasResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/locales';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleSearchIdeahubV1betaListAvailableLocalesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleSearchIdeahubV1betaTopicState.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  GoogleSearchIdeahubV1betaAvailableLocale.fromJson(core.Map json_)
      : this(
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  GoogleSearchIdeahubV1betaIdea.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => GoogleSearchIdeahubV1betaTopic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (text != null) 'text': text!,
        if (topics != null) 'topics': topics!,
      };
}

/// An idea activity entry.
class GoogleSearchIdeahubV1betaIdeaActivity {
  /// The Idea IDs for this entry.
  ///
  /// If empty, topics should be set.
  core.List<core.String>? ideas;

  /// Unique identifier for the idea activity.
  ///
  /// The name is ignored when creating an idea activity. Format:
  /// platforms/{platform}/properties/{property}/ideaActivities/{idea_activity}
  core.String? name;

  /// The Topic IDs for this entry.
  ///
  /// If empty, ideas should be set.
  core.List<core.String>? topics;

  /// The type of activity performed.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified, unknown type of idea activity.
  /// - "POST_DRAFTED" : An idea activity type indicating a post has been
  /// drafted.
  /// - "POST_PUBLISHED" : An idea activity type indicating a post has been
  /// published.
  /// - "POST_DELETED" : An idea activity type indicating a post has been
  /// deleted.
  /// - "POST_UNPUBLISHED" : An idea activity type indicating a post has been
  /// unpublished.
  core.String? type;

  /// The uri the activity relates to.
  core.String? uri;

  GoogleSearchIdeahubV1betaIdeaActivity({
    this.ideas,
    this.name,
    this.topics,
    this.type,
    this.uri,
  });

  GoogleSearchIdeahubV1betaIdeaActivity.fromJson(core.Map json_)
      : this(
          ideas: json_.containsKey('ideas')
              ? (json_['ideas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ideas != null) 'ideas': ideas!,
        if (name != null) 'name': name!,
        if (topics != null) 'topics': topics!,
        if (type != null) 'type': type!,
        if (uri != null) 'uri': uri!,
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

  GoogleSearchIdeahubV1betaIdeaState.fromJson(core.Map json_)
      : this(
          dismissed: json_.containsKey('dismissed')
              ? json_['dismissed'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          saved:
              json_.containsKey('saved') ? json_['saved'] as core.bool : null,
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

  GoogleSearchIdeahubV1betaListAvailableLocalesResponse.fromJson(core.Map json_)
      : this(
          availableLocales: json_.containsKey('availableLocales')
              ? (json_['availableLocales'] as core.List)
                  .map((value) =>
                      GoogleSearchIdeahubV1betaAvailableLocale.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableLocales != null) 'availableLocales': availableLocales!,
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

  GoogleSearchIdeahubV1betaListIdeasResponse.fromJson(core.Map json_)
      : this(
          ideas: json_.containsKey('ideas')
              ? (json_['ideas'] as core.List)
                  .map((value) => GoogleSearchIdeahubV1betaIdea.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ideas != null) 'ideas': ideas!,
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

  GoogleSearchIdeahubV1betaTopic.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          mid: json_.containsKey('mid') ? json_['mid'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  GoogleSearchIdeahubV1betaTopicState.fromJson(core.Map json_)
      : this(
          dismissed: json_.containsKey('dismissed')
              ? json_['dismissed'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          saved:
              json_.containsKey('saved') ? json_['saved'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dismissed != null) 'dismissed': dismissed!,
        if (name != null) 'name': name!,
        if (saved != null) 'saved': saved!,
      };
}
