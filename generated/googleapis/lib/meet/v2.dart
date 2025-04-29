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
// ignore_for_file: unused_import

/// Google Meet API - v2
///
/// Create and manage meetings in Google Meet.
///
/// For more information, see <https://developers.google.com/meet/api>
///
/// Create an instance of [MeetApi] to access these resources:
///
/// - [ConferenceRecordsResource]
///   - [ConferenceRecordsParticipantsResource]
///     - [ConferenceRecordsParticipantsParticipantSessionsResource]
///   - [ConferenceRecordsRecordingsResource]
///   - [ConferenceRecordsTranscriptsResource]
///     - [ConferenceRecordsTranscriptsEntriesResource]
/// - [SpacesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/convert.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Create and manage meetings in Google Meet.
class MeetApi {
  /// Create, edit, and see information about your Google Meet conferences
  /// created by the app.
  static const meetingsSpaceCreatedScope =
      'https://www.googleapis.com/auth/meetings.space.created';

  /// Read information about any of your Google Meet conferences
  static const meetingsSpaceReadonlyScope =
      'https://www.googleapis.com/auth/meetings.space.readonly';

  /// Edit, and see settings for all of your Google Meet calls.
  static const meetingsSpaceSettingsScope =
      'https://www.googleapis.com/auth/meetings.space.settings';

  final commons.ApiRequester _requester;

  ConferenceRecordsResource get conferenceRecords =>
      ConferenceRecordsResource(_requester);
  SpacesResource get spaces => SpacesResource(_requester);

  MeetApi(http.Client client,
      {core.String rootUrl = 'https://meet.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ConferenceRecordsResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsParticipantsResource get participants =>
      ConferenceRecordsParticipantsResource(_requester);
  ConferenceRecordsRecordingsResource get recordings =>
      ConferenceRecordsRecordingsResource(_requester);
  ConferenceRecordsTranscriptsResource get transcripts =>
      ConferenceRecordsTranscriptsResource(_requester);

  ConferenceRecordsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a conference record by conference ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the conference.
  /// Value must have pattern `^conferenceRecords/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConferenceRecord].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConferenceRecord> get(
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
    return ConferenceRecord.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the conference records.
  ///
  /// By default, ordered by start time and in descending order.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. User specified filtering condition in
  /// [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
  /// The following are the filterable fields: * `space.meeting_code` *
  /// `space.name` * `start_time` * `end_time` For example, consider the
  /// following filters: * `space.name = "spaces/NAME"` * `space.meeting_code =
  /// "abc-mnop-xyz"` * `start_time>="2024-01-01T00:00:00.000Z" AND
  /// start_time<="2024-01-02T00:00:00.000Z"` * `end_time IS NULL`
  ///
  /// [pageSize] - Optional. Maximum number of conference records to return. The
  /// service might return fewer than this value. If unspecified, at most 25
  /// conference records are returned. The maximum value is 100; values above
  /// 100 are coerced to 100. Maximum might change in the future.
  ///
  /// [pageToken] - Optional. Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConferenceRecordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConferenceRecordsResponse> list({
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

    const url_ = 'v2/conferenceRecords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConferenceRecordsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConferenceRecordsParticipantsResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsParticipantsParticipantSessionsResource
      get participantSessions =>
          ConferenceRecordsParticipantsParticipantSessionsResource(_requester);

  ConferenceRecordsParticipantsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a participant by participant ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the participant.
  /// Value must have pattern
  /// `^conferenceRecords/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Participant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Participant> get(
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
    return Participant.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the participants in a conference record.
  ///
  /// By default, ordered by join time and in descending order. This API
  /// supports `fields` as standard parameters like every other API. However,
  /// when the `fields` request parameter is omitted, this API defaults to
  /// `'participants / * , next_page_token'`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `conferenceRecords/{conference_record}`
  /// Value must have pattern `^conferenceRecords/\[^/\]+$`.
  ///
  /// [filter] - Optional. User specified filtering condition in
  /// [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
  /// The following are the filterable fields: * `earliest_start_time` *
  /// `latest_end_time` For example, `latest_end_time IS NULL` returns active
  /// participants in the conference.
  ///
  /// [pageSize] - Maximum number of participants to return. The service might
  /// return fewer than this value. If unspecified, at most 100 participants are
  /// returned. The maximum value is 250; values above 250 are coerced to 250.
  /// Maximum might change in the future.
  ///
  /// [pageToken] - Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListParticipantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListParticipantsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/participants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListParticipantsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConferenceRecordsParticipantsParticipantSessionsResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsParticipantsParticipantSessionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a participant session by participant session ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the participant.
  /// Value must have pattern
  /// `^conferenceRecords/\[^/\]+/participants/\[^/\]+/participantSessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParticipantSession].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParticipantSession> get(
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
    return ParticipantSession.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the participant sessions of a participant in a conference record.
  ///
  /// By default, ordered by join time and in descending order. This API
  /// supports `fields` as standard parameters like every other API. However,
  /// when the `fields` request parameter is omitted this API defaults to
  /// `'participantsessions / * , next_page_token'`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `conferenceRecords/{conference_record}/participants/{participant}`
  /// Value must have pattern
  /// `^conferenceRecords/\[^/\]+/participants/\[^/\]+$`.
  ///
  /// [filter] - Optional. User specified filtering condition in
  /// [EBNF format](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form).
  /// The following are the filterable fields: * `start_time` * `end_time` For
  /// example, `end_time IS NULL` returns active participant sessions in the
  /// conference record.
  ///
  /// [pageSize] - Optional. Maximum number of participant sessions to return.
  /// The service might return fewer than this value. If unspecified, at most
  /// 100 participants are returned. The maximum value is 250; values above 250
  /// are coerced to 250. Maximum might change in the future.
  ///
  /// [pageToken] - Optional. Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListParticipantSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListParticipantSessionsResponse> list(
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/participantSessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListParticipantSessionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConferenceRecordsRecordingsResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsRecordingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a recording by recording ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the recording.
  /// Value must have pattern `^conferenceRecords/\[^/\]+/recordings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Recording].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Recording> get(
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
    return Recording.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the recording resources from the conference record.
  ///
  /// By default, ordered by start time and in ascending order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `conferenceRecords/{conference_record}`
  /// Value must have pattern `^conferenceRecords/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of recordings to return. The service might
  /// return fewer than this value. If unspecified, at most 10 recordings are
  /// returned. The maximum value is 100; values above 100 are coerced to 100.
  /// Maximum might change in the future.
  ///
  /// [pageToken] - Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRecordingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRecordingsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/recordings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRecordingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConferenceRecordsTranscriptsResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsTranscriptsEntriesResource get entries =>
      ConferenceRecordsTranscriptsEntriesResource(_requester);

  ConferenceRecordsTranscriptsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a transcript by transcript ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the transcript.
  /// Value must have pattern `^conferenceRecords/\[^/\]+/transcripts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Transcript].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Transcript> get(
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
    return Transcript.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the set of transcripts from the conference record.
  ///
  /// By default, ordered by start time and in ascending order.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `conferenceRecords/{conference_record}`
  /// Value must have pattern `^conferenceRecords/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of transcripts to return. The service might
  /// return fewer than this value. If unspecified, at most 10 transcripts are
  /// returned. The maximum value is 100; values above 100 are coerced to 100.
  /// Maximum might change in the future.
  ///
  /// [pageToken] - Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTranscriptsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTranscriptsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/transcripts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTranscriptsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConferenceRecordsTranscriptsEntriesResource {
  final commons.ApiRequester _requester;

  ConferenceRecordsTranscriptsEntriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a `TranscriptEntry` resource by entry ID.
  ///
  /// Note: The transcript entries returned by the Google Meet API might not
  /// match the transcription found in the Google Docs transcript file. This can
  /// occur when the Google Docs transcript file is modified after generation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the `TranscriptEntry`.
  /// Value must have pattern
  /// `^conferenceRecords/\[^/\]+/transcripts/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TranscriptEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TranscriptEntry> get(
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
    return TranscriptEntry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the structured transcript entries per transcript.
  ///
  /// By default, ordered by start time and in ascending order. Note: The
  /// transcript entries returned by the Google Meet API might not match the
  /// transcription found in the Google Docs transcript file. This can occur
  /// when the Google Docs transcript file is modified after generation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `conferenceRecords/{conference_record}/transcripts/{transcript}`
  /// Value must have pattern `^conferenceRecords/\[^/\]+/transcripts/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of entries to return. The service might return
  /// fewer than this value. If unspecified, at most 10 entries are returned.
  /// The maximum value is 100; values above 100 are coerced to 100. Maximum
  /// might change in the future.
  ///
  /// [pageToken] - Page token returned from previous List Call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTranscriptEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTranscriptEntriesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTranscriptEntriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SpacesResource {
  final commons.ApiRequester _requester;

  SpacesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a space.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Space].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Space> create(
    Space request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/spaces';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Space.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Ends an active conference (if there's one).
  ///
  /// For an example, see
  /// [End active conference](https://developers.google.com/meet/api/guides/meeting-spaces#end-active-conference).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the space. Format: `spaces/{space}`.
  /// `{space}` is the resource identifier for the space. It's a unique,
  /// server-generated ID and is case sensitive. For example, `jQCFfuBOdN5z`.
  /// For more information, see
  /// [How Meet identifies a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
  /// Value must have pattern `^spaces/\[^/\]+$`.
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
  async.Future<Empty> endActiveConference(
    EndActiveConferenceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':endActiveConference';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a meeting space.
  ///
  /// For an example, see
  /// [Get a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#get-meeting-space).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the space. Format: `spaces/{space}` or
  /// `spaces/{meetingCode}`. `{space}` is the resource identifier for the
  /// space. It's a unique, server-generated ID and is case sensitive. For
  /// example, `jQCFfuBOdN5z`. `{meetingCode}` is an alias for the space. It's a
  /// typeable, unique character string and is non-case sensitive. For example,
  /// `abc-mnop-xyz`. The maximum length is 128 characters. A `meetingCode`
  /// shouldn't be stored long term as it can become dissociated from a meeting
  /// space and can be reused for different meeting spaces in the future.
  /// Generally, a `meetingCode` expires 365 days after last use. For more
  /// information, see
  /// [Learn about meeting codes in Google Meet](https://support.google.com/meet/answer/10710509).
  /// For more information, see
  /// [How Meet identifies a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Space].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Space> get(
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
    return Space.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates details about a meeting space.
  ///
  /// For an example, see
  /// [Update a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#update-meeting-space).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Resource name of the space. Format: `spaces/{space}`.
  /// `{space}` is the resource identifier for the space. It's a unique,
  /// server-generated ID and is case sensitive. For example, `jQCFfuBOdN5z`.
  /// For more information, see
  /// [How Meet identifies a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
  /// Value must have pattern `^spaces/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask used to specify the fields to be
  /// updated in the space. If update_mask isn't provided(not set, set with
  /// empty paths, or only has "" as paths), it defaults to update all fields
  /// provided with values in the request. Using "*" as update_mask will update
  /// all fields, including deleting fields not set in the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Space].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Space> patch(
    Space request,
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
    return Space.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Active conference.
class ActiveConference {
  /// Reference to 'ConferenceRecord' resource.
  ///
  /// Format: `conferenceRecords/{conference_record}` where
  /// `{conference_record}` is a unique ID for each instance of a call within a
  /// space.
  ///
  /// Output only.
  core.String? conferenceRecord;

  ActiveConference({
    this.conferenceRecord,
  });

  ActiveConference.fromJson(core.Map json_)
      : this(
          conferenceRecord: json_['conferenceRecord'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conferenceRecord != null) 'conferenceRecord': conferenceRecord!,
      };
}

/// User who joins anonymously (meaning not signed into a Google Account).
class AnonymousUser {
  /// User provided name when they join a conference anonymously.
  ///
  /// Output only.
  core.String? displayName;

  AnonymousUser({
    this.displayName,
  });

  AnonymousUser.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Single instance of a meeting held in a space.
class ConferenceRecord {
  /// Timestamp when the conference ended.
  ///
  /// Set for past conferences. Unset if the conference is ongoing.
  ///
  /// Output only.
  core.String? endTime;

  /// Server enforced expiration time for when this conference record resource
  /// is deleted.
  ///
  /// The resource is deleted 30 days after the conference ends.
  ///
  /// Output only.
  core.String? expireTime;

  /// Identifier.
  ///
  /// Resource name of the conference record. Format:
  /// `conferenceRecords/{conference_record}` where `{conference_record}` is a
  /// unique ID for each instance of a call within a space.
  core.String? name;

  /// The space where the conference was held.
  ///
  /// Output only.
  core.String? space;

  /// Timestamp when the conference started.
  ///
  /// Always set.
  ///
  /// Output only.
  core.String? startTime;

  ConferenceRecord({
    this.endTime,
    this.expireTime,
    this.name,
    this.space,
    this.startTime,
  });

  ConferenceRecord.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          name: json_['name'] as core.String?,
          space: json_['space'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (space != null) 'space': space!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Google Docs location where the transcript file is saved.
class DocsDestination {
  /// The document ID for the underlying Google Docs transcript file.
  ///
  /// For example, "1kuceFZohVoCh6FulBHxwy6I15Ogpc4hP". Use the `documents.get`
  /// method of the Google Docs API
  /// (https://developers.google.com/docs/api/reference/rest/v1/documents/get)
  /// to fetch the content.
  ///
  /// Output only.
  core.String? document;

  /// URI for the Google Docs transcript file.
  ///
  /// Use `https://docs.google.com/document/d/{$DocumentId}/view` to browse the
  /// transcript in the browser.
  ///
  /// Output only.
  core.String? exportUri;

  DocsDestination({
    this.document,
    this.exportUri,
  });

  DocsDestination.fromJson(core.Map json_)
      : this(
          document: json_['document'] as core.String?,
          exportUri: json_['exportUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (exportUri != null) 'exportUri': exportUri!,
      };
}

/// Export location where a recording file is saved in Google Drive.
class DriveDestination {
  /// Link used to play back the recording file in the browser.
  ///
  /// For example, `https://drive.google.com/file/d/{$fileId}/view`.
  ///
  /// Output only.
  core.String? exportUri;

  /// The `fileId` for the underlying MP4 file.
  ///
  /// For example, "1kuceFZohVoCh6FulBHxwy6I15Ogpc4hP". Use `$ GET
  /// https://www.googleapis.com/drive/v3/files/{$fileId}?alt=media` to download
  /// the blob. For more information, see
  /// https://developers.google.com/drive/api/v3/reference/files/get.
  ///
  /// Output only.
  core.String? file;

  DriveDestination({
    this.exportUri,
    this.file,
  });

  DriveDestination.fromJson(core.Map json_)
      : this(
          exportUri: json_['exportUri'] as core.String?,
          file: json_['file'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportUri != null) 'exportUri': exportUri!,
        if (file != null) 'file': file!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request to end an ongoing conference of a space.
typedef EndActiveConferenceRequest = $Empty;

/// Response of ListConferenceRecords method.
class ListConferenceRecordsResponse {
  /// List of conferences in one page.
  core.List<ConferenceRecord>? conferenceRecords;

  /// Token to be circulated back for further List call if current List does NOT
  /// include all the Conferences.
  ///
  /// Unset if all conferences have been returned.
  core.String? nextPageToken;

  ListConferenceRecordsResponse({
    this.conferenceRecords,
    this.nextPageToken,
  });

  ListConferenceRecordsResponse.fromJson(core.Map json_)
      : this(
          conferenceRecords: (json_['conferenceRecords'] as core.List?)
              ?.map((value) => ConferenceRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conferenceRecords != null) 'conferenceRecords': conferenceRecords!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response of ListParticipants method.
class ListParticipantSessionsResponse {
  /// Token to be circulated back for further List call if current List doesn't
  /// include all the participants.
  ///
  /// Unset if all participants are returned.
  core.String? nextPageToken;

  /// List of participants in one page.
  core.List<ParticipantSession>? participantSessions;

  ListParticipantSessionsResponse({
    this.nextPageToken,
    this.participantSessions,
  });

  ListParticipantSessionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          participantSessions: (json_['participantSessions'] as core.List?)
              ?.map((value) => ParticipantSession.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (participantSessions != null)
          'participantSessions': participantSessions!,
      };
}

/// Response of ListParticipants method.
class ListParticipantsResponse {
  /// Token to be circulated back for further List call if current List doesn't
  /// include all the participants.
  ///
  /// Unset if all participants are returned.
  core.String? nextPageToken;

  /// List of participants in one page.
  core.List<Participant>? participants;

  /// Total, exact number of `participants`.
  ///
  /// By default, this field isn't included in the response. Set the field mask
  /// in
  /// [SystemParameterContext](https://cloud.google.com/apis/docs/system-parameters)
  /// to receive this field in the response.
  core.int? totalSize;

  ListParticipantsResponse({
    this.nextPageToken,
    this.participants,
    this.totalSize,
  });

  ListParticipantsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          participants: (json_['participants'] as core.List?)
              ?.map((value) => Participant.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (participants != null) 'participants': participants!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response for ListRecordings method.
class ListRecordingsResponse {
  /// Token to be circulated back for further List call if current List doesn't
  /// include all the recordings.
  ///
  /// Unset if all recordings are returned.
  core.String? nextPageToken;

  /// List of recordings in one page.
  core.List<Recording>? recordings;

  ListRecordingsResponse({
    this.nextPageToken,
    this.recordings,
  });

  ListRecordingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          recordings: (json_['recordings'] as core.List?)
              ?.map((value) => Recording.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (recordings != null) 'recordings': recordings!,
      };
}

/// Response for ListTranscriptEntries method.
class ListTranscriptEntriesResponse {
  /// Token to be circulated back for further List call if current List doesn't
  /// include all the transcript entries.
  ///
  /// Unset if all entries are returned.
  core.String? nextPageToken;

  /// List of TranscriptEntries in one page.
  core.List<TranscriptEntry>? transcriptEntries;

  ListTranscriptEntriesResponse({
    this.nextPageToken,
    this.transcriptEntries,
  });

  ListTranscriptEntriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          transcriptEntries: (json_['transcriptEntries'] as core.List?)
              ?.map((value) => TranscriptEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transcriptEntries != null) 'transcriptEntries': transcriptEntries!,
      };
}

/// Response for ListTranscripts method.
class ListTranscriptsResponse {
  /// Token to be circulated back for further List call if current List doesn't
  /// include all the transcripts.
  ///
  /// Unset if all transcripts are returned.
  core.String? nextPageToken;

  /// List of transcripts in one page.
  core.List<Transcript>? transcripts;

  ListTranscriptsResponse({
    this.nextPageToken,
    this.transcripts,
  });

  ListTranscriptsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          transcripts: (json_['transcripts'] as core.List?)
              ?.map((value) => Transcript.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transcripts != null) 'transcripts': transcripts!,
      };
}

/// User who attended or is attending a conference.
class Participant {
  /// Anonymous user.
  AnonymousUser? anonymousUser;

  /// Time when the participant first joined the meeting.
  ///
  /// Output only.
  core.String? earliestStartTime;

  /// Time when the participant left the meeting for the last time.
  ///
  /// This can be null if it's an active meeting.
  ///
  /// Output only.
  core.String? latestEndTime;

  /// Resource name of the participant.
  ///
  /// Format: `conferenceRecords/{conference_record}/participants/{participant}`
  ///
  /// Output only.
  core.String? name;

  /// User calling from their phone.
  PhoneUser? phoneUser;

  /// Signed-in user.
  SignedinUser? signedinUser;

  Participant({
    this.anonymousUser,
    this.earliestStartTime,
    this.latestEndTime,
    this.name,
    this.phoneUser,
    this.signedinUser,
  });

  Participant.fromJson(core.Map json_)
      : this(
          anonymousUser: json_.containsKey('anonymousUser')
              ? AnonymousUser.fromJson(
                  json_['anonymousUser'] as core.Map<core.String, core.dynamic>)
              : null,
          earliestStartTime: json_['earliestStartTime'] as core.String?,
          latestEndTime: json_['latestEndTime'] as core.String?,
          name: json_['name'] as core.String?,
          phoneUser: json_.containsKey('phoneUser')
              ? PhoneUser.fromJson(
                  json_['phoneUser'] as core.Map<core.String, core.dynamic>)
              : null,
          signedinUser: json_.containsKey('signedinUser')
              ? SignedinUser.fromJson(
                  json_['signedinUser'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anonymousUser != null) 'anonymousUser': anonymousUser!,
        if (earliestStartTime != null) 'earliestStartTime': earliestStartTime!,
        if (latestEndTime != null) 'latestEndTime': latestEndTime!,
        if (name != null) 'name': name!,
        if (phoneUser != null) 'phoneUser': phoneUser!,
        if (signedinUser != null) 'signedinUser': signedinUser!,
      };
}

/// Refers to each unique join or leave session when a user joins a conference
/// from a device.
///
/// Note that any time a user joins the conference a new unique ID is assigned.
/// That means if a user joins a space multiple times from the same device,
/// they're assigned different IDs, and are also be treated as different
/// participant sessions.
class ParticipantSession {
  /// Timestamp when the user session ends.
  ///
  /// Unset if the user session hasn’t ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifier.
  ///
  /// Session id.
  core.String? name;

  /// Timestamp when the user session starts.
  ///
  /// Output only.
  core.String? startTime;

  ParticipantSession({
    this.endTime,
    this.name,
    this.startTime,
  });

  ParticipantSession.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// User dialing in from a phone where the user's identity is unknown because
/// they haven't signed in with a Google Account.
class PhoneUser {
  /// Partially redacted user's phone number when calling.
  ///
  /// Output only.
  core.String? displayName;

  PhoneUser({
    this.displayName,
  });

  PhoneUser.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Metadata about a recording created during a conference.
class Recording {
  /// Recording is saved to Google Drive as an MP4 file.
  ///
  /// The `drive_destination` includes the Drive `fileId` that can be used to
  /// download the file using the `files.get` method of the Drive API.
  ///
  /// Output only.
  DriveDestination? driveDestination;

  /// Timestamp when the recording ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Resource name of the recording.
  ///
  /// Format: `conferenceRecords/{conference_record}/recordings/{recording}`
  /// where `{recording}` is a 1:1 mapping to each unique recording session
  /// during the conference.
  ///
  /// Output only.
  core.String? name;

  /// Timestamp when the recording started.
  ///
  /// Output only.
  core.String? startTime;

  /// Current state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default, never used.
  /// - "STARTED" : An active recording session has started.
  /// - "ENDED" : This recording session has ended, but the recording file
  /// hasn't been generated yet.
  /// - "FILE_GENERATED" : Recording file is generated and ready to download.
  core.String? state;

  Recording({
    this.driveDestination,
    this.endTime,
    this.name,
    this.startTime,
    this.state,
  });

  Recording.fromJson(core.Map json_)
      : this(
          driveDestination: json_.containsKey('driveDestination')
              ? DriveDestination.fromJson(json_['driveDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveDestination != null) 'driveDestination': driveDestination!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// A signed-in user can be: a) An individual joining from a personal computer,
/// mobile device, or through companion mode.
///
/// b) A robot account used by conference room devices.
class SignedinUser {
  /// For a personal device, it's the user's first name and last name.
  ///
  /// For a robot account, it's the administrator-specified device name. For
  /// example, "Altostrat Room".
  ///
  /// Output only.
  core.String? displayName;

  /// Unique ID for the user.
  ///
  /// Interoperable with Admin SDK API and People API. Format: `users/{user}`
  ///
  /// Output only.
  core.String? user;

  SignedinUser({
    this.displayName,
    this.user,
  });

  SignedinUser.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          user: json_['user'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (user != null) 'user': user!,
      };
}

/// Virtual place where conferences are held.
///
/// Only one active conference can be held in one space at any given time.
class Space {
  /// Active conference, if it exists.
  ActiveConference? activeConference;

  /// Configuration pertaining to the meeting space.
  SpaceConfig? config;

  /// Type friendly unique string used to join the meeting.
  ///
  /// Format: `[a-z]+-[a-z]+-[a-z]+`. For example, `abc-mnop-xyz`. The maximum
  /// length is 128 characters. Can only be used as an alias of the space name
  /// to get the space.
  ///
  /// Output only.
  core.String? meetingCode;

  /// URI used to join meetings consisting of `https://meet.google.com/`
  /// followed by the `meeting_code`.
  ///
  /// For example, `https://meet.google.com/abc-mnop-xyz`.
  ///
  /// Output only.
  core.String? meetingUri;

  /// Resource name of the space.
  ///
  /// Format: `spaces/{space}`. `{space}` is the resource identifier for the
  /// space. It's a unique, server-generated ID and is case sensitive. For
  /// example, `jQCFfuBOdN5z`. For more information, see
  /// [How Meet identifies a meeting space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
  ///
  /// Immutable.
  core.String? name;

  Space({
    this.activeConference,
    this.config,
    this.meetingCode,
    this.meetingUri,
    this.name,
  });

  Space.fromJson(core.Map json_)
      : this(
          activeConference: json_.containsKey('activeConference')
              ? ActiveConference.fromJson(json_['activeConference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          config: json_.containsKey('config')
              ? SpaceConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          meetingCode: json_['meetingCode'] as core.String?,
          meetingUri: json_['meetingUri'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeConference != null) 'activeConference': activeConference!,
        if (config != null) 'config': config!,
        if (meetingCode != null) 'meetingCode': meetingCode!,
        if (meetingUri != null) 'meetingUri': meetingUri!,
        if (name != null) 'name': name!,
      };
}

/// The configuration pertaining to a meeting space.
class SpaceConfig {
  /// Access type of the meeting space that determines who can join without
  /// knocking.
  ///
  /// Default: The user's default access settings. Controlled by the user's
  /// admin for enterprise users or RESTRICTED.
  /// Possible string values are:
  /// - "ACCESS_TYPE_UNSPECIFIED" : Default value specified by the user's
  /// organization. Note: This is never returned, as the configured access type
  /// is returned instead.
  /// - "OPEN" : Anyone with the join information (for example, the URL or phone
  /// access information) can join without knocking.
  /// - "TRUSTED" : Members of the host's organization, invited external users,
  /// and dial-in users can join without knocking. Everyone else must knock.
  /// - "RESTRICTED" : Only invitees can join without knocking. Everyone else
  /// must knock.
  core.String? accessType;

  /// Defines the entry points that can be used to join meetings hosted in this
  /// meeting space.
  ///
  /// Default: EntryPointAccess.ALL
  /// Possible string values are:
  /// - "ENTRY_POINT_ACCESS_UNSPECIFIED" : Unused.
  /// - "ALL" : All entry points are allowed.
  /// - "CREATOR_APP_ONLY" : Only entry points owned by the Google Cloud project
  /// that created the space can be used to join meetings in this space. Apps
  /// can use the Meet Embed SDK Web or mobile Meet SDKs to create owned entry
  /// points.
  core.String? entryPointAccess;

  SpaceConfig({
    this.accessType,
    this.entryPointAccess,
  });

  SpaceConfig.fromJson(core.Map json_)
      : this(
          accessType: json_['accessType'] as core.String?,
          entryPointAccess: json_['entryPointAccess'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessType != null) 'accessType': accessType!,
        if (entryPointAccess != null) 'entryPointAccess': entryPointAccess!,
      };
}

/// Metadata for a transcript generated from a conference.
///
/// It refers to the ASR (Automatic Speech Recognition) result of user's speech
/// during the conference.
class Transcript {
  /// Where the Google Docs transcript is saved.
  ///
  /// Output only.
  DocsDestination? docsDestination;

  /// Timestamp when the transcript stopped.
  ///
  /// Output only.
  core.String? endTime;

  /// Resource name of the transcript.
  ///
  /// Format: `conferenceRecords/{conference_record}/transcripts/{transcript}`,
  /// where `{transcript}` is a 1:1 mapping to each unique transcription session
  /// of the conference.
  ///
  /// Output only.
  core.String? name;

  /// Timestamp when the transcript started.
  ///
  /// Output only.
  core.String? startTime;

  /// Current state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default, never used.
  /// - "STARTED" : An active transcript session has started.
  /// - "ENDED" : This transcript session has ended, but the transcript file
  /// hasn't been generated yet.
  /// - "FILE_GENERATED" : Transcript file is generated and ready to download.
  core.String? state;

  Transcript({
    this.docsDestination,
    this.endTime,
    this.name,
    this.startTime,
    this.state,
  });

  Transcript.fromJson(core.Map json_)
      : this(
          docsDestination: json_.containsKey('docsDestination')
              ? DocsDestination.fromJson(json_['docsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (docsDestination != null) 'docsDestination': docsDestination!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// Single entry for one user’s speech during a transcript session.
class TranscriptEntry {
  /// Timestamp when the transcript entry ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Language of spoken text, such as "en-US".
  ///
  /// IETF BCP 47 syntax (https://tools.ietf.org/html/bcp47)
  ///
  /// Output only.
  core.String? languageCode;

  /// Resource name of the entry.
  ///
  /// Format:
  /// "conferenceRecords/{conference_record}/transcripts/{transcript}/entries/{entry}"
  ///
  /// Output only.
  core.String? name;

  /// Refers to the participant who speaks.
  ///
  /// Output only.
  core.String? participant;

  /// Timestamp when the transcript entry started.
  ///
  /// Output only.
  core.String? startTime;

  /// The transcribed text of the participant's voice, at maximum 10K words.
  ///
  /// Note that the limit is subject to change.
  ///
  /// Output only.
  core.String? text;

  TranscriptEntry({
    this.endTime,
    this.languageCode,
    this.name,
    this.participant,
    this.startTime,
    this.text,
  });

  TranscriptEntry.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          name: json_['name'] as core.String?,
          participant: json_['participant'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          text: json_['text'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (participant != null) 'participant': participant!,
        if (startTime != null) 'startTime': startTime!,
        if (text != null) 'text': text!,
      };
}
