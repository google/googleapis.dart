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

/// Google Civic Information API - v2
///
/// Provides polling places, early vote locations, contest data, election
/// officials, and government representatives for U.S. residential addresses.
///
/// For more information, see <https://developers.google.com/civic-information/>
///
/// Create an instance of [CivicInfoApi] to access these resources:
///
/// - [DivisionsResource]
/// - [ElectionsResource]
/// - [RepresentativesResource]
library civicinfo.v2;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides polling places, early vote locations, contest data, election
/// officials, and government representatives for U.S. residential addresses.
class CivicInfoApi {
  final commons.ApiRequester _requester;

  DivisionsResource get divisions => DivisionsResource(_requester);
  ElectionsResource get elections => ElectionsResource(_requester);
  RepresentativesResource get representatives =>
      RepresentativesResource(_requester);

  CivicInfoApi(http.Client client,
      {core.String rootUrl = 'https://civicinfo.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DivisionsResource {
  final commons.ApiRequester _requester;

  DivisionsResource(commons.ApiRequester client) : _requester = client;

  /// Searches for political divisions by their natural name or OCD ID.
  ///
  /// Request parameters:
  ///
  /// [query] - The search query. Queries can cover any parts of a OCD ID or a
  /// human readable division name. All words given in the query are treated as
  /// required patterns. In addition to that, most query operators of the Apache
  /// Lucene library are supported. See
  /// http://lucene.apache.org/core/2_9_4/queryparsersyntax.html
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DivisionSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DivisionSearchResponse> search({
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'civicinfo/v2/divisions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DivisionSearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ElectionsResource {
  final commons.ApiRequester _requester;

  ElectionsResource(commons.ApiRequester client) : _requester = client;

  /// List of available elections to query.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ElectionsQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ElectionsQueryResponse> electionQuery({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'civicinfo/v2/elections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ElectionsQueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up information relevant to a voter based on the voter's registered
  /// address.
  ///
  /// Request parameters:
  ///
  /// [address] - The registered address of the voter to look up.
  ///
  /// [electionId] - The unique ID of the election to look up. A list of
  /// election IDs can be obtained at
  /// https://www.googleapis.com/civicinfo/{version}/elections. If no election
  /// ID is specified in the query and there is more than one election with data
  /// for the given voter, the additional elections are provided in the
  /// otherElections response field.
  ///
  /// [officialOnly] - If set to true, only data from official state sources
  /// will be returned.
  ///
  /// [returnAllAvailableData] - If set to true, the query will return the
  /// success code and include any partial information when it is unable to
  /// determine a matching address or unable to determine the election for
  /// electionId=0 queries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VoterInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VoterInfoResponse> voterInfoQuery(
    core.String address, {
    core.String? electionId,
    core.bool? officialOnly,
    core.bool? returnAllAvailableData,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'address': [address],
      if (electionId != null) 'electionId': [electionId],
      if (officialOnly != null) 'officialOnly': ['${officialOnly}'],
      if (returnAllAvailableData != null)
        'returnAllAvailableData': ['${returnAllAvailableData}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'civicinfo/v2/voterinfo';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VoterInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class RepresentativesResource {
  final commons.ApiRequester _requester;

  RepresentativesResource(commons.ApiRequester client) : _requester = client;

  /// Looks up political geography and representative information for a single
  /// address.
  ///
  /// Request parameters:
  ///
  /// [address] - The address to look up. May only be specified if the field
  /// ocdId is not given in the URL
  ///
  /// [includeOffices] - Whether to return information about offices and
  /// officials. If false, only the top-level district information will be
  /// returned.
  ///
  /// [levels] - A list of office levels to filter by. Only offices that serve
  /// at least one of these levels will be returned. Divisions that don't
  /// contain a matching office will not be returned.
  ///
  /// [roles] - A list of office roles to filter by. Only offices fulfilling one
  /// of these roles will be returned. Divisions that don't contain a matching
  /// office will not be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RepresentativeInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RepresentativeInfoResponse> representativeInfoByAddress({
    core.String? address,
    core.bool? includeOffices,
    core.List<core.String>? levels,
    core.List<core.String>? roles,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (address != null) 'address': [address],
      if (includeOffices != null) 'includeOffices': ['${includeOffices}'],
      if (levels != null) 'levels': levels,
      if (roles != null) 'roles': roles,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'civicinfo/v2/representatives';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RepresentativeInfoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up representative information for a single geographic division.
  ///
  /// Request parameters:
  ///
  /// [ocdId] - The Open Civic Data division identifier of the division to look
  /// up.
  ///
  /// [levels] - A list of office levels to filter by. Only offices that serve
  /// at least one of these levels will be returned. Divisions that don't
  /// contain a matching office will not be returned.
  ///
  /// [recursive] - If true, information about all divisions contained in the
  /// division requested will be included as well. For example, if querying
  /// ocd-division/country:us/district:dc, this would also return all DC's wards
  /// and ANCs.
  ///
  /// [roles] - A list of office roles to filter by. Only offices fulfilling one
  /// of these roles will be returned. Divisions that don't contain a matching
  /// office will not be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RepresentativeInfoData].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RepresentativeInfoData> representativeInfoByDivision(
    core.String ocdId, {
    core.List<core.String>? levels,
    core.bool? recursive,
    core.List<core.String>? roles,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (levels != null) 'levels': levels,
      if (recursive != null) 'recursive': ['${recursive}'],
      if (roles != null) 'roles': roles,
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'civicinfo/v2/representatives/' + commons.escapeVariable('$ocdId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RepresentativeInfoData.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Describes information about a regional election administrative area.
class AdministrationRegion {
  /// The election administration body for this area.
  AdministrativeBody? electionAdministrationBody;

  /// The city or county that provides election information for this voter.
  ///
  /// This object can have the same elements as state.
  AdministrationRegion? localJurisdiction;

  /// The name of the jurisdiction.
  core.String? name;

  /// A list of sources for this area.
  ///
  /// If multiple sources are listed the data has been aggregated from those
  /// sources.
  core.List<Source>? sources;

  AdministrationRegion({
    this.electionAdministrationBody,
    this.localJurisdiction,
    this.name,
    this.sources,
  });

  AdministrationRegion.fromJson(core.Map _json)
      : this(
          electionAdministrationBody: _json
                  .containsKey('electionAdministrationBody')
              ? AdministrativeBody.fromJson(_json['electionAdministrationBody']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localJurisdiction: _json.containsKey('local_jurisdiction')
              ? AdministrationRegion.fromJson(_json['local_jurisdiction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (electionAdministrationBody != null)
          'electionAdministrationBody': electionAdministrationBody!,
        if (localJurisdiction != null) 'local_jurisdiction': localJurisdiction!,
        if (name != null) 'name': name!,
        if (sources != null) 'sources': sources!,
      };
}

/// Information about an election administrative body (e.g. County Board of
/// Elections).
class AdministrativeBody {
  /// A URL provided by this administrative body for information on absentee
  /// voting.
  core.String? absenteeVotingInfoUrl;

  /// A URL provided by this administrative body to give contest information to
  /// the voter.
  core.String? ballotInfoUrl;

  /// The mailing address of this administrative body.
  SimpleAddressType? correspondenceAddress;

  /// A URL provided by this administrative body for looking up general election
  /// information.
  core.String? electionInfoUrl;

  /// A last minute or emergency notification text provided by this
  /// administrative body.
  core.String? electionNoticeText;

  /// A URL provided by this administrative body for additional information
  /// related to the last minute or emergency notification.
  core.String? electionNoticeUrl;

  /// The election officials for this election administrative body.
  core.List<ElectionOfficial>? electionOfficials;

  /// A URL provided by this administrative body for confirming that the voter
  /// is registered to vote.
  core.String? electionRegistrationConfirmationUrl;

  /// A URL provided by this administrative body for looking up how to register
  /// to vote.
  core.String? electionRegistrationUrl;

  /// A URL provided by this administrative body describing election rules to
  /// the voter.
  core.String? electionRulesUrl;

  /// A description of the hours of operation for this administrative body.
  core.String? hoursOfOperation;

  /// The name of this election administrative body.
  core.String? name;

  /// The physical address of this administrative body.
  SimpleAddressType? physicalAddress;

  /// A description of the services this administrative body may provide.
  core.List<core.String>? voterServices;

  /// A URL provided by this administrative body for looking up where to vote.
  core.String? votingLocationFinderUrl;

  AdministrativeBody({
    this.absenteeVotingInfoUrl,
    this.ballotInfoUrl,
    this.correspondenceAddress,
    this.electionInfoUrl,
    this.electionNoticeText,
    this.electionNoticeUrl,
    this.electionOfficials,
    this.electionRegistrationConfirmationUrl,
    this.electionRegistrationUrl,
    this.electionRulesUrl,
    this.hoursOfOperation,
    this.name,
    this.physicalAddress,
    this.voterServices,
    this.votingLocationFinderUrl,
  });

  AdministrativeBody.fromJson(core.Map _json)
      : this(
          absenteeVotingInfoUrl: _json.containsKey('absenteeVotingInfoUrl')
              ? _json['absenteeVotingInfoUrl'] as core.String
              : null,
          ballotInfoUrl: _json.containsKey('ballotInfoUrl')
              ? _json['ballotInfoUrl'] as core.String
              : null,
          correspondenceAddress: _json.containsKey('correspondenceAddress')
              ? SimpleAddressType.fromJson(_json['correspondenceAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          electionInfoUrl: _json.containsKey('electionInfoUrl')
              ? _json['electionInfoUrl'] as core.String
              : null,
          electionNoticeText: _json.containsKey('electionNoticeText')
              ? _json['electionNoticeText'] as core.String
              : null,
          electionNoticeUrl: _json.containsKey('electionNoticeUrl')
              ? _json['electionNoticeUrl'] as core.String
              : null,
          electionOfficials: _json.containsKey('electionOfficials')
              ? (_json['electionOfficials'] as core.List)
                  .map((value) => ElectionOfficial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          electionRegistrationConfirmationUrl:
              _json.containsKey('electionRegistrationConfirmationUrl')
                  ? _json['electionRegistrationConfirmationUrl'] as core.String
                  : null,
          electionRegistrationUrl: _json.containsKey('electionRegistrationUrl')
              ? _json['electionRegistrationUrl'] as core.String
              : null,
          electionRulesUrl: _json.containsKey('electionRulesUrl')
              ? _json['electionRulesUrl'] as core.String
              : null,
          hoursOfOperation: _json.containsKey('hoursOfOperation')
              ? _json['hoursOfOperation'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          physicalAddress: _json.containsKey('physicalAddress')
              ? SimpleAddressType.fromJson(_json['physicalAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          voterServices: _json.containsKey('voter_services')
              ? (_json['voter_services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          votingLocationFinderUrl: _json.containsKey('votingLocationFinderUrl')
              ? _json['votingLocationFinderUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (absenteeVotingInfoUrl != null)
          'absenteeVotingInfoUrl': absenteeVotingInfoUrl!,
        if (ballotInfoUrl != null) 'ballotInfoUrl': ballotInfoUrl!,
        if (correspondenceAddress != null)
          'correspondenceAddress': correspondenceAddress!,
        if (electionInfoUrl != null) 'electionInfoUrl': electionInfoUrl!,
        if (electionNoticeText != null)
          'electionNoticeText': electionNoticeText!,
        if (electionNoticeUrl != null) 'electionNoticeUrl': electionNoticeUrl!,
        if (electionOfficials != null) 'electionOfficials': electionOfficials!,
        if (electionRegistrationConfirmationUrl != null)
          'electionRegistrationConfirmationUrl':
              electionRegistrationConfirmationUrl!,
        if (electionRegistrationUrl != null)
          'electionRegistrationUrl': electionRegistrationUrl!,
        if (electionRulesUrl != null) 'electionRulesUrl': electionRulesUrl!,
        if (hoursOfOperation != null) 'hoursOfOperation': hoursOfOperation!,
        if (name != null) 'name': name!,
        if (physicalAddress != null) 'physicalAddress': physicalAddress!,
        if (voterServices != null) 'voter_services': voterServices!,
        if (votingLocationFinderUrl != null)
          'votingLocationFinderUrl': votingLocationFinderUrl!,
      };
}

/// Information about a candidate running for elected office.
class Candidate {
  /// The URL for the candidate's campaign web site.
  core.String? candidateUrl;

  /// A list of known (social) media channels for this candidate.
  core.List<Channel>? channels;

  /// The email address for the candidate's campaign.
  core.String? email;

  /// The candidate's name.
  ///
  /// If this is a joint ticket it will indicate the name of the candidate at
  /// the top of a ticket followed by a / and that name of candidate at the
  /// bottom of the ticket. e.g. "Mitt Romney / Paul Ryan"
  core.String? name;

  /// The order the candidate appears on the ballot for this contest.
  core.String? orderOnBallot;

  /// The full name of the party the candidate is a member of.
  core.String? party;

  /// The voice phone number for the candidate's campaign office.
  core.String? phone;

  /// A URL for a photo of the candidate.
  core.String? photoUrl;

  Candidate({
    this.candidateUrl,
    this.channels,
    this.email,
    this.name,
    this.orderOnBallot,
    this.party,
    this.phone,
    this.photoUrl,
  });

  Candidate.fromJson(core.Map _json)
      : this(
          candidateUrl: _json.containsKey('candidateUrl')
              ? _json['candidateUrl'] as core.String
              : null,
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          orderOnBallot: _json.containsKey('orderOnBallot')
              ? _json['orderOnBallot'] as core.String
              : null,
          party:
              _json.containsKey('party') ? _json['party'] as core.String : null,
          phone:
              _json.containsKey('phone') ? _json['phone'] as core.String : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (candidateUrl != null) 'candidateUrl': candidateUrl!,
        if (channels != null) 'channels': channels!,
        if (email != null) 'email': email!,
        if (name != null) 'name': name!,
        if (orderOnBallot != null) 'orderOnBallot': orderOnBallot!,
        if (party != null) 'party': party!,
        if (phone != null) 'phone': phone!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
      };
}

/// A social media or web channel for a candidate.
class Channel {
  /// The unique public identifier for the candidate's channel.
  core.String? id;

  /// The type of channel.
  ///
  /// The following is a list of types of channels, but is not exhaustive. More
  /// channel types may be added at a later time. One of: GooglePlus, YouTube,
  /// Facebook, Twitter
  core.String? type;

  Channel({
    this.id,
    this.type,
  });

  Channel.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (type != null) 'type': type!,
      };
}

/// Information about a contest that appears on a voter's ballot.
class Contest {
  /// A number specifying the position of this contest on the voter's ballot.
  core.String? ballotPlacement;

  /// The official title on the ballot for this contest, only where available.
  core.String? ballotTitle;

  /// The candidate choices for this contest.
  core.List<Candidate>? candidates;

  /// Information about the electoral district that this contest is in.
  ElectoralDistrict? district;

  /// A description of any additional eligibility requirements for voting in
  /// this contest.
  core.String? electorateSpecifications;

  /// The levels of government of the office for this contest.
  ///
  /// There may be more than one in cases where a jurisdiction effectively acts
  /// at two different levels of government; for example, the mayor of the
  /// District of Columbia acts at "locality" level, but also effectively at
  /// both "administrative-area-2" and "administrative-area-1".
  core.List<core.String>? level;

  /// The number of candidates that will be elected to office in this contest.
  core.String? numberElected;

  /// The number of candidates that a voter may vote for in this contest.
  core.String? numberVotingFor;

  /// The name of the office for this contest.
  core.String? office;

  /// If this is a partisan election, the name of the party/parties it is for.
  core.List<core.String>? primaryParties;

  /// If this is a partisan election, the name of the party it is for.
  ///
  /// This field as deprecated in favor of the array "primaryParties", as
  /// contests may contain more than one party.
  ///
  /// Deprecated.
  core.String? primaryParty;

  /// The set of ballot responses for the referendum.
  ///
  /// A ballot response represents a line on the ballot. Common examples might
  /// include "yes" or "no" for referenda. This field is only populated for
  /// contests of type 'Referendum'.
  core.List<core.String>? referendumBallotResponses;

  /// Specifies a short summary of the referendum that is typically on the
  /// ballot below the title but above the text.
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumBrief;

  /// A statement in opposition to the referendum.
  ///
  /// It does not necessarily appear on the ballot. This field is only populated
  /// for contests of type 'Referendum'.
  core.String? referendumConStatement;

  /// Specifies what effect abstaining (not voting) on the proposition will have
  /// (i.e. whether abstaining is considered a vote against it).
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumEffectOfAbstain;

  /// The threshold of votes that the referendum needs in order to pass, e.g.
  /// "two-thirds".
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumPassageThreshold;

  /// A statement in favor of the referendum.
  ///
  /// It does not necessarily appear on the ballot. This field is only populated
  /// for contests of type 'Referendum'.
  core.String? referendumProStatement;

  /// A brief description of the referendum.
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumSubtitle;

  /// The full text of the referendum.
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumText;

  /// The title of the referendum (e.g. 'Proposition 42').
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumTitle;

  /// A link to the referendum.
  ///
  /// This field is only populated for contests of type 'Referendum'.
  core.String? referendumUrl;

  /// The roles which this office fulfills.
  core.List<core.String>? roles;

  /// A list of sources for this contest.
  ///
  /// If multiple sources are listed, the data has been aggregated from those
  /// sources.
  core.List<Source>? sources;

  /// "Yes" or "No" depending on whether this a contest being held outside the
  /// normal election cycle.
  core.String? special;

  /// The type of contest.
  ///
  /// Usually this will be 'General', 'Primary', or 'Run-off' for contests with
  /// candidates. For referenda this will be 'Referendum'. For Retention
  /// contests this will typically be 'Retention'.
  core.String? type;

  Contest({
    this.ballotPlacement,
    this.ballotTitle,
    this.candidates,
    this.district,
    this.electorateSpecifications,
    this.level,
    this.numberElected,
    this.numberVotingFor,
    this.office,
    this.primaryParties,
    this.primaryParty,
    this.referendumBallotResponses,
    this.referendumBrief,
    this.referendumConStatement,
    this.referendumEffectOfAbstain,
    this.referendumPassageThreshold,
    this.referendumProStatement,
    this.referendumSubtitle,
    this.referendumText,
    this.referendumTitle,
    this.referendumUrl,
    this.roles,
    this.sources,
    this.special,
    this.type,
  });

  Contest.fromJson(core.Map _json)
      : this(
          ballotPlacement: _json.containsKey('ballotPlacement')
              ? _json['ballotPlacement'] as core.String
              : null,
          ballotTitle: _json.containsKey('ballotTitle')
              ? _json['ballotTitle'] as core.String
              : null,
          candidates: _json.containsKey('candidates')
              ? (_json['candidates'] as core.List)
                  .map((value) => Candidate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          district: _json.containsKey('district')
              ? ElectoralDistrict.fromJson(
                  _json['district'] as core.Map<core.String, core.dynamic>)
              : null,
          electorateSpecifications:
              _json.containsKey('electorateSpecifications')
                  ? _json['electorateSpecifications'] as core.String
                  : null,
          level: _json.containsKey('level')
              ? (_json['level'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          numberElected: _json.containsKey('numberElected')
              ? _json['numberElected'] as core.String
              : null,
          numberVotingFor: _json.containsKey('numberVotingFor')
              ? _json['numberVotingFor'] as core.String
              : null,
          office: _json.containsKey('office')
              ? _json['office'] as core.String
              : null,
          primaryParties: _json.containsKey('primaryParties')
              ? (_json['primaryParties'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          primaryParty: _json.containsKey('primaryParty')
              ? _json['primaryParty'] as core.String
              : null,
          referendumBallotResponses:
              _json.containsKey('referendumBallotResponses')
                  ? (_json['referendumBallotResponses'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          referendumBrief: _json.containsKey('referendumBrief')
              ? _json['referendumBrief'] as core.String
              : null,
          referendumConStatement: _json.containsKey('referendumConStatement')
              ? _json['referendumConStatement'] as core.String
              : null,
          referendumEffectOfAbstain:
              _json.containsKey('referendumEffectOfAbstain')
                  ? _json['referendumEffectOfAbstain'] as core.String
                  : null,
          referendumPassageThreshold:
              _json.containsKey('referendumPassageThreshold')
                  ? _json['referendumPassageThreshold'] as core.String
                  : null,
          referendumProStatement: _json.containsKey('referendumProStatement')
              ? _json['referendumProStatement'] as core.String
              : null,
          referendumSubtitle: _json.containsKey('referendumSubtitle')
              ? _json['referendumSubtitle'] as core.String
              : null,
          referendumText: _json.containsKey('referendumText')
              ? _json['referendumText'] as core.String
              : null,
          referendumTitle: _json.containsKey('referendumTitle')
              ? _json['referendumTitle'] as core.String
              : null,
          referendumUrl: _json.containsKey('referendumUrl')
              ? _json['referendumUrl'] as core.String
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          special: _json.containsKey('special')
              ? _json['special'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ballotPlacement != null) 'ballotPlacement': ballotPlacement!,
        if (ballotTitle != null) 'ballotTitle': ballotTitle!,
        if (candidates != null) 'candidates': candidates!,
        if (district != null) 'district': district!,
        if (electorateSpecifications != null)
          'electorateSpecifications': electorateSpecifications!,
        if (level != null) 'level': level!,
        if (numberElected != null) 'numberElected': numberElected!,
        if (numberVotingFor != null) 'numberVotingFor': numberVotingFor!,
        if (office != null) 'office': office!,
        if (primaryParties != null) 'primaryParties': primaryParties!,
        if (primaryParty != null) 'primaryParty': primaryParty!,
        if (referendumBallotResponses != null)
          'referendumBallotResponses': referendumBallotResponses!,
        if (referendumBrief != null) 'referendumBrief': referendumBrief!,
        if (referendumConStatement != null)
          'referendumConStatement': referendumConStatement!,
        if (referendumEffectOfAbstain != null)
          'referendumEffectOfAbstain': referendumEffectOfAbstain!,
        if (referendumPassageThreshold != null)
          'referendumPassageThreshold': referendumPassageThreshold!,
        if (referendumProStatement != null)
          'referendumProStatement': referendumProStatement!,
        if (referendumSubtitle != null)
          'referendumSubtitle': referendumSubtitle!,
        if (referendumText != null) 'referendumText': referendumText!,
        if (referendumTitle != null) 'referendumTitle': referendumTitle!,
        if (referendumUrl != null) 'referendumUrl': referendumUrl!,
        if (roles != null) 'roles': roles!,
        if (sources != null) 'sources': sources!,
        if (special != null) 'special': special!,
        if (type != null) 'type': type!,
      };
}

/// The result of a division search query.
class DivisionSearchResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "civicinfo#divisionSearchResponse".
  core.String? kind;
  core.List<DivisionSearchResult>? results;

  DivisionSearchResponse({
    this.kind,
    this.results,
  });

  DivisionSearchResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => DivisionSearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (results != null) 'results': results!,
      };
}

/// Represents a political geographic division that matches the requested query.
class DivisionSearchResult {
  /// Other Open Civic Data identifiers that refer to the same division -- for
  /// example, those that refer to other political divisions whose boundaries
  /// are defined to be coterminous with this one.
  ///
  /// For example, ocd-division/country:us/state:wy will include an alias of
  /// ocd-division/country:us/state:wy/cd:1, since Wyoming has only one
  /// Congressional district.
  core.List<core.String>? aliases;

  /// The name of the division.
  core.String? name;

  /// The unique Open Civic Data identifier for this division
  core.String? ocdId;

  DivisionSearchResult({
    this.aliases,
    this.name,
    this.ocdId,
  });

  DivisionSearchResult.fromJson(core.Map _json)
      : this(
          aliases: _json.containsKey('aliases')
              ? (_json['aliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ocdId:
              _json.containsKey('ocdId') ? _json['ocdId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliases != null) 'aliases': aliases!,
        if (name != null) 'name': name!,
        if (ocdId != null) 'ocdId': ocdId!,
      };
}

/// Information about the election that was queried.
class Election {
  /// Day of the election in YYYY-MM-DD format.
  core.String? electionDay;

  /// The unique ID of this election.
  core.String? id;

  /// A displayable name for the election.
  core.String? name;

  /// The political division of the election.
  ///
  /// Represented as an OCD Division ID. Voters within these political
  /// jurisdictions are covered by this election. This is typically a state such
  /// as ocd-division/country:us/state:ca or for the midterms or general
  /// election the entire US (i.e. ocd-division/country:us).
  core.String? ocdDivisionId;

  Election({
    this.electionDay,
    this.id,
    this.name,
    this.ocdDivisionId,
  });

  Election.fromJson(core.Map _json)
      : this(
          electionDay: _json.containsKey('electionDay')
              ? _json['electionDay'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ocdDivisionId: _json.containsKey('ocdDivisionId')
              ? _json['ocdDivisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (electionDay != null) 'electionDay': electionDay!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (ocdDivisionId != null) 'ocdDivisionId': ocdDivisionId!,
      };
}

/// Information about individual election officials.
class ElectionOfficial {
  /// The email address of the election official.
  core.String? emailAddress;

  /// The fax number of the election official.
  core.String? faxNumber;

  /// The full name of the election official.
  core.String? name;

  /// The office phone number of the election official.
  core.String? officePhoneNumber;

  /// The title of the election official.
  core.String? title;

  ElectionOfficial({
    this.emailAddress,
    this.faxNumber,
    this.name,
    this.officePhoneNumber,
    this.title,
  });

  ElectionOfficial.fromJson(core.Map _json)
      : this(
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          faxNumber: _json.containsKey('faxNumber')
              ? _json['faxNumber'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          officePhoneNumber: _json.containsKey('officePhoneNumber')
              ? _json['officePhoneNumber'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (faxNumber != null) 'faxNumber': faxNumber!,
        if (name != null) 'name': name!,
        if (officePhoneNumber != null) 'officePhoneNumber': officePhoneNumber!,
        if (title != null) 'title': title!,
      };
}

/// The list of elections available for this version of the API.
class ElectionsQueryResponse {
  /// A list of available elections
  core.List<Election>? elections;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "civicinfo#electionsQueryResponse".
  core.String? kind;

  ElectionsQueryResponse({
    this.elections,
    this.kind,
  });

  ElectionsQueryResponse.fromJson(core.Map _json)
      : this(
          elections: _json.containsKey('elections')
              ? (_json['elections'] as core.List)
                  .map((value) => Election.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elections != null) 'elections': elections!,
        if (kind != null) 'kind': kind!,
      };
}

/// Describes the geographic scope of a contest.
class ElectoralDistrict {
  /// An identifier for this district, relative to its scope.
  ///
  /// For example, the 34th State Senate district would have id "34" and a scope
  /// of stateUpper.
  core.String? id;

  /// The name of the district.
  core.String? name;

  /// The geographic scope of this district.
  ///
  /// If unspecified the district's geography is not known. One of: national,
  /// statewide, congressional, stateUpper, stateLower, countywide, judicial,
  /// schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
  /// Possible string values are:
  /// - "statewide"
  /// - "congressional"
  /// - "stateUpper"
  /// - "stateLower"
  /// - "countywide"
  /// - "judicial"
  /// - "schoolBoard"
  /// - "citywide"
  /// - "special"
  /// - "countyCouncil"
  /// - "township"
  /// - "ward"
  /// - "cityCouncil"
  /// - "national"
  core.String? scope;

  ElectoralDistrict({
    this.id,
    this.name,
    this.scope,
  });

  ElectoralDistrict.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (scope != null) 'scope': scope!,
      };
}

/// A globally unique identifier associated with each feature.
///
/// We use 128-bit identifiers so that we have lots of bits available to
/// distinguish between features. The feature id currently consists of a 64-bit
/// "cell id" that **sometimes** corresponds to the approximate centroid of the
/// feature, plus a 64-bit fingerprint of other identifying information. See
/// more on each respective field in its comments. Feature ids are first
/// assigned when the data is created in MapFacts. After initial creation of the
/// feature, they are immutable. This means that the only properties that you
/// should rely on are that they are unique, and that cell_ids often - but not
/// always - preserve spatial locality. The degree of locality varies as the
/// feature undergoes geometry changes, and should not in general be considered
/// a firm guarantee of the location of any particular feature. In fact, some
/// locationless features have randomized cell IDs! Consumers of FeatureProtos
/// from Mapfacts are guaranteed that fprints in the id field of features will
/// be globally unique. Using the fprint allows consumers who don't need the
/// spatial benefit of cell ids to uniquely identify features in a 64-bit
/// address space. This property is not guaranteed for other sources of
/// FeatureProtos.
class FeatureIdProto {
  /// The S2CellId corresponding to the approximate location of this feature as
  /// of when it was first created.
  ///
  /// This can be of variable accuracy, ranging from the exact centroid of the
  /// feature at creation, a very large S2 Cell, or even being completely
  /// randomized for locationless features. Cell ids have the nice property that
  /// they follow a space-filling curve over the surface of the earth. (See
  /// s2cellid.h for details.) WARNING: Clients should only use cell IDs to
  /// perform spatial locality optimizations. There is no strict guarantee that
  /// the cell ID of a feature is related to the current geometry of the feature
  /// in any way.
  core.String? cellId;

  /// A 64-bit fingerprint used to identify features.
  ///
  /// Most clients should rely on MapFacts or OneRing to choose fingerprints. If
  /// creating new fprints, the strategy should be chosen so that the chance of
  /// collision is remote or non-existent, and the distribution should be
  /// reasonably uniform. For example, if the source data assigns unique ids to
  /// features, then a fingerprint of the provider name, version, and source id
  /// is sufficient.
  core.String? fprint;

  /// A place for clients to attach arbitrary data to a feature ID.
  ///
  /// Never set in MapFacts.
  MessageSet? temporaryData;

  FeatureIdProto({
    this.cellId,
    this.fprint,
    this.temporaryData,
  });

  FeatureIdProto.fromJson(core.Map _json)
      : this(
          cellId: _json.containsKey('cellId')
              ? _json['cellId'] as core.String
              : null,
          fprint: _json.containsKey('fprint')
              ? _json['fprint'] as core.String
              : null,
          temporaryData: _json.containsKey('temporaryData')
              ? MessageSet.fromJson(
                  _json['temporaryData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellId != null) 'cellId': cellId!,
        if (fprint != null) 'fprint': fprint!,
        if (temporaryData != null) 'temporaryData': temporaryData!,
      };
}

/// Detailed summary of the result from geocoding an address
class GeocodingSummary {
  /// Represents the best estimate of whether or not the input address was fully
  /// understood and the address is correctly componentized.
  ///
  /// Mirrors the same-name field in geostore.staging.AddressLinkupScoringProto.
  core.bool? addressUnderstood;

  /// The ID of the FeatureProto returned by the geocoder
  FeatureIdProto? featureId;

  /// The feature type for the FeatureProto returned by the geocoder
  /// Possible string values are:
  /// - "typeAny" : ABSTRACT
  /// - "typeTransportation" : ABSTRACT
  /// - "typeRoute" : A route is any section of road (or rails, etc.) that has a
  /// name. This includes city streets as well as highways. Road segments can
  /// belong to multiple routes (e.g. El Camino, CA-82).
  /// - "typeDeprecatedHighwayDoNotUse" : DEPRECATED
  /// - "typeHighway" : ABSTRACT
  /// - "typeHighway1"
  /// - "typeHighway2"
  /// - "typeHighway3"
  /// - "typeHighway4"
  /// - "typeHighway5"
  /// - "typeHighway6"
  /// - "typeHighway7"
  /// - "typeHighway8"
  /// - "typeHighway9"
  /// - "typeBicycleRoute" : A designated bicycle route, whose segments may
  /// consist of any combination of bicycle paths, bicycle lanes, or city
  /// streets.
  /// - "typeTrail" : A designated trail, which may consist of paved walkways,
  /// dirt paths, fire road, streets or highways, etc.
  /// - "typeSegment" : ABSTRACT
  /// - "typeRoad"
  /// - "typeRailway" : Railroads use several different incompatible track
  /// types.
  /// - "typeStandardTrack"
  /// - "typeJrTrack"
  /// - "typeNarrowTrack"
  /// - "typeMonorailTrack"
  /// - "typeSubwayTrack"
  /// - "typeLightRailTrack"
  /// - "typeBroadTrack"
  /// - "typeHighSpeedRail"
  /// - "typeTrolleyTrack" : Tracks for streetcars, cable-cars, etc. Ferries are
  /// services that are part of the road network but are not roads. They
  /// typically involve fares and scheduled departure times.
  /// - "typeFerry" : ABSTRACT
  /// - "typeFerryBoat" : The vast majority of ferries are ferry boats.
  /// - "typeFerryTrain" : Also called a "car transport", a ferry train is a
  /// rail service that carries passengers and their vehicles across undrivable
  /// terrain. The Channel Tunnel ("Chunnel") is the most famous example, but
  /// they are also common in the Alps where they connect neighboring valleys
  /// otherwise separated by impassable mountains.
  /// - "typeVirtualSegment" : Any plausible 1-dimensional path through a 2+
  /// dimensional space, for the purposes of making graph-search-based routing
  /// possible. Such segments can be used to model paths through parking lots,
  /// squares, floors of buildings and other areas.
  /// - "typeIntersection" : An intersection consists of a collection of
  /// segments that terminate at the same location. This is topological
  /// definition: it may not match what a typical user would think of as an
  /// "intersection". See TYPE_INTERSECTION_GROUP, below, for more information.
  /// Each segment terminating at an intersection has an "endpoint type" that
  /// specifies how that segment is terminated: stop sign, yield sign, three-way
  /// light, etc.
  /// - "typeTransit" : ABSTRACT
  /// - "typeTransitStation" : DEPRECATED
  /// - "typeBusStation" : DEPRECATED
  /// - "typeTramwayStation" : DEPRECATED
  /// - "typeTrainStation" : DEPRECATED
  /// - "typeSubwayStation" : DEPRECATED
  /// - "typeFerryTerminal" : DEPRECATED
  /// - "typeAirport" : DEPRECATED
  /// - "typeAirportCivil" : DEPRECATED
  /// - "typeAirportMilitary" : DEPRECATED
  /// - "typeAirportMixed" : DEPRECATED
  /// - "typeHeliport" : DEPRECATED
  /// - "typeSeaplaneBase" : DEPRECATED
  /// - "typeAirstrip" : DEPRECATED
  /// - "typeCableCarStation" : DEPRECATED
  /// - "typeGondolaLiftStation" : DEPRECATED
  /// - "typeFunicularStation" : DEPRECATED
  /// - "typeSpecialStation" : DEPRECATED
  /// - "typeHorseCarriageStation" : DEPRECATED
  /// - "typeMonorailStation" : DEPRECATED
  /// - "typeSeaport" : DEPRECATED
  /// - "typeTransitStop" : DEPRECATED
  /// - "typeTransitTrip" : DEPRECATED
  /// - "typeTransitDeparture" : DEPRECATED
  /// - "typeTransitLeg" : DEPRECATED
  /// - "typeTransitLine" : A transit line is a collection of transit legs,
  /// associated with some invariant properties of the trips that run over the
  /// legs. See also transitline.proto
  /// - "typeTransitAgencyDeprecatedValue" : TYPE_TRANSIT_AGENCY was moved to
  /// 0xC91. This deprecated enum value still exists for debugging purposes
  /// only.
  /// - "typeTransitTransfer" : DEPRECATED
  /// - "typeSegmentPath" : ABSTRACT
  /// - "typeRoadSign" : Road sign features have names, point geometry, etc.
  /// They also have segment_path data (see below) which lists the segments that
  /// refer to the sign. See segment.proto for the reference from the segment to
  /// the road sign.
  /// - "typeIntersectionGroup" : Our TYPE_INTERSECTION feature, above, models
  /// the point where one or more segments terminate. This is topological
  /// definition: it may not match what a typical user would think of as an
  /// "intersection". Consider the intersections where Hayes, Market, Larkin,
  /// and 9th Street meet near (37.77765, -122.41638) in San Francisco. Most
  /// people would probably consider this a single feature, even though we model
  /// it as four separate TYPE_INTERSECTION features. This
  /// TYPE_INTERSECTION_GROUP is used to model the user's concept of a complex
  /// intersection.
  /// - "typePathway" : RESERVED
  /// - "typeRestrictionGroup" : A restriction group describes a set of segment
  /// restrictions that belong together and have a name or an associated event.
  /// See also restriction_group.proto
  /// - "typeTollCluster" : A toll cluster is either a single point on a segment
  /// (represented as a point at the end of the segment that has
  /// ENDPOINT_TOLL_BOOTH set) or a group of points on various road segments in
  /// MapFacts that represents one or more lanes passing through a toll fixture
  /// that all go to the same routing destination. Each toll cluster should have
  /// at most a single price per payment method. E.g. {CASH = $5, PASS = $1}.
  /// Note: If a toll fixture has different prices for multiple routing
  /// destinations, drivers need to be in the correct lane before passing
  /// through the toll fixture and hence such a fixture is represented by
  /// multiple toll clusters. A toll cluster does not necessarily represent a
  /// real-world entity, e.g. a particular plaza/structure as perceived by
  /// humans. This is because a plaza can be represented by more than one toll
  /// cluster. We require toll clusters to have names, but they might be
  /// non-unique. For example, a plaza might be represented by multiple toll
  /// clusters that may have the same plaza name. For further details, please
  /// see go/toll-cluster-schema.
  /// - "typePolitical" : ABSTRACT
  /// - "typeCountry"
  /// - "typeAdministrativeArea" : ABSTRACT
  /// - "typeAdministrativeArea1"
  /// - "typeUsState" : DEPRECATED
  /// - "typeGbCountry" : DEPRECATED
  /// - "typeJpTodoufuken" : DEPRECATED
  /// - "typeAdministrativeArea2"
  /// - "typeGbFormerPostalCounty" : DEPRECATED
  /// - "typeGbTraditionalCounty" : DEPRECATED
  /// - "typeAdministrativeArea3"
  /// - "typeAdministrativeArea4"
  /// - "typeAdministrativeArea5"
  /// - "typeAdministrativeArea6"
  /// - "typeAdministrativeArea7"
  /// - "typeAdministrativeArea8"
  /// - "typeAdministrativeArea9"
  /// - "typeColloquialArea" : e.g. Silicon Valley
  /// - "typeReservation" : A reservation is a region collectively held or
  /// governed by indigenous people and officially recognized by the country’s
  /// government at the federal or state level. A reservation may be fully
  /// contained within an administrative feature or partially contained within
  /// two or more. These regions are referred to by different categorical names
  /// depending on country and even by state, including but not limited to:
  /// “Indian Reservations”, “Indian Reserves”, “Land Claim Settlement Lands”,
  /// “Indian Lands”, “Treaty Lands”, “Indigenous Territories”, etc. A
  /// reservation is not a historic indigenous territory boundary or a region
  /// which has applied for land rights but has not yet received official
  /// recognition.
  /// - "typeLocality"
  /// - "typeGbPostTown" : DEPRECATED
  /// - "typeJpGun" : DEPRECATED
  /// - "typeJpShikuchouson" : DEPRECATED
  /// - "typeJpSubShikuchouson" : DEPRECATED
  /// - "typeColloquialCity" : An entity widely considered to be a city, that
  /// may itself be made up of smaller political entities, some of which are
  /// cities/towns/villages themselves. For example, the colloquial view of
  /// Sydney, Australia actually comprises many smaller cities, but is regarded
  /// as a city itself. This type is not suitable for modeling official
  /// metro-/micropolitan or other statistical areas.
  /// - "typeSublocality" : ABSTRACT
  /// - "typeUsBorough" : DEPRECATED
  /// - "typeGbDependentLocality" : DEPRECATED
  /// - "typeJpOoaza" : DEPRECATED
  /// - "typeJpKoaza" : DEPRECATED
  /// - "typeJpGaiku" : DEPRECATED
  /// - "typeGbDoubleDependentLocality" : DEPRECATED
  /// - "typeJpChiban" : DEPRECATED
  /// - "typeJpEdaban" : DEPRECATED
  /// - "typeSublocality1"
  /// - "typeSublocality2"
  /// - "typeSublocality3"
  /// - "typeSublocality4"
  /// - "typeSublocality5"
  /// - "typeNeighborhood"
  /// - "typeConstituency"
  /// - "typeDesignatedMarketArea" : Designated Market Areas (or DMAs) are used
  /// by marketing and ratings companies (such as the Nielsen Media Research
  /// company) to describe geographical regions (such as the greater New York
  /// metropolitan area) that are covered by a set of television stations. (See
  /// http://www.schooldata.com/pdfs/DMA.pdf) In the United States, DMAs should
  /// have a DMA numeric ID name, tagged with the FLAG_DESIGNATED_MARKET_AREA_ID
  /// flag.
  /// - "typeSchoolDistrict"
  /// - "typeLandParcel"
  /// - "typeDisputedArea" : Eventually we'll have more data for disputed areas
  /// (e.g., who makes claims on the area, who has de facto control, etc.). For
  /// the moment, we just define a type so we can simply mark areas as disputed.
  /// - "typePoliceJurisdiction" : Boundaries representing the jurisdiction of a
  /// particular police station.
  /// - "typeStatisticalArea" : An area used for aggregating statistical data,
  /// eg, a census region. Note that TYPE_STATISTICAL_AREA has a third nibble so
  /// we can add an abstract parent above it later if need be at 0x2E1 (and
  /// rename TYPE_STATISTICAL_AREA as TYPE_STATISTICAL_AREA1).
  /// - "typeConstituencyFuture" : RESERVED
  /// - "typePark" : DEPRECATED
  /// - "typeGolfCourse" : DEPRECATED
  /// - "typeLocalPark" : DEPRECATED
  /// - "typeNationalPark" : DEPRECATED
  /// - "typeUsNationalPark" : DEPRECATED
  /// - "typeUsNationalMonument" : DEPRECATED
  /// - "typeNationalForest" : DEPRECATED
  /// - "typeProvincialPark" : DEPRECATED
  /// - "typeProvincialForest" : DEPRECATED
  /// - "typeCampgrounds" : DEPRECATED
  /// - "typeHikingArea" : DEPRECATED
  /// - "typeBusiness" : DEPRECATED
  /// - "typeGovernment" : DEPRECATED
  /// - "typeBorderCrossing" : DEPRECATED
  /// - "typeCityHall" : DEPRECATED
  /// - "typeCourthouse" : DEPRECATED
  /// - "typeEmbassy" : DEPRECATED
  /// - "typeLibrary" : DEPRECATED
  /// - "typeSchool" : DEPRECATED
  /// - "typeUniversity" : DEPRECATED
  /// - "typeEmergency" : DEPRECATED
  /// - "typeHospital" : DEPRECATED
  /// - "typePharmacy" : DEPRECATED
  /// - "typePolice" : DEPRECATED
  /// - "typeFire" : DEPRECATED
  /// - "typeDoctor" : DEPRECATED
  /// - "typeDentist" : DEPRECATED
  /// - "typeVeterinarian" : DEPRECATED
  /// - "typeTravelService" : DEPRECATED
  /// - "typeLodging" : DEPRECATED
  /// - "typeRestaurant" : DEPRECATED
  /// - "typeGasStation" : DEPRECATED
  /// - "typeParking" : DEPRECATED
  /// - "typePostOffice" : DEPRECATED
  /// - "typeRestArea" : DEPRECATED
  /// - "typeCashMachine" : DEPRECATED
  /// - "typeCarRental" : DEPRECATED
  /// - "typeCarRepair" : DEPRECATED
  /// - "typeShopping" : DEPRECATED
  /// - "typeGrocery" : DEPRECATED
  /// - "typeTouristDestination" : DEPRECATED
  /// - "typeEcoTouristDestination" : DEPRECATED
  /// - "typeBirdWatching" : DEPRECATED
  /// - "typeFishing" : DEPRECATED
  /// - "typeHunting" : DEPRECATED
  /// - "typeNatureReserve" : DEPRECATED
  /// - "typeTemple" : DEPRECATED
  /// - "typeChurch" : DEPRECATED
  /// - "typeGurudwara" : DEPRECATED
  /// - "typeHinduTemple" : DEPRECATED
  /// - "typeMosque" : DEPRECATED
  /// - "typeSynagogue" : DEPRECATED
  /// - "typeStadium" : DEPRECATED
  /// - "typeBar" : DEPRECATED
  /// - "typeMovieRental" : DEPRECATED
  /// - "typeCoffee" : DEPRECATED
  /// - "typeGolf" : DEPRECATED
  /// - "typeBank" : DEPRECATED
  /// - "typeDoodle" : DEPRECATED
  /// - "typeGrounds" : DEPRECATED
  /// - "typeAirportGrounds" : DEPRECATED
  /// - "typeBuildingGrounds" : DEPRECATED
  /// - "typeCemetery" : DEPRECATED
  /// - "typeHospitalGrounds" : DEPRECATED
  /// - "typeIndustrial" : DEPRECATED
  /// - "typeMilitary" : DEPRECATED
  /// - "typeShoppingCenter" : DEPRECATED
  /// - "typeSportsComplex" : DEPRECATED
  /// - "typeUniversityGrounds" : DEPRECATED
  /// - "typeDeprecatedTarmac" : DEPRECATED
  /// - "typeEnclosedTrafficArea" : DEPRECATED
  /// - "typeParkingLot" : DEPRECATED
  /// - "typeParkingGarage" : DEPRECATED
  /// - "typeOffRoadArea" : DEPRECATED
  /// - "typeBorder" : A line representing the boundary between two features.
  /// See border.proto for details.
  /// - "typeBuilding" : DEPRECATED
  /// - "typeGeocodedAddress" : An association of a point with an address, with
  /// no other information.
  /// - "typeNaturalFeature" : ABSTRACT
  /// - "typeTerrain" : Expanses of land that share common surface attributes.
  /// These areas would look more or less uniform from a high altitude.
  /// - "typeSand"
  /// - "typeBeach"
  /// - "typeDune"
  /// - "typeRocky"
  /// - "typeIce"
  /// - "typeGlacier"
  /// - "typeBuiltUpArea" : Terrain that looks populated.
  /// - "typeVegetation" : Terrain that is covered in vegetation.
  /// - "typeShrubbery"
  /// - "typeWoods"
  /// - "typeAgricultural"
  /// - "typeGrassland"
  /// - "typeTundra"
  /// - "typeDesert"
  /// - "typeSaltFlat" : A flat expanse of salt left by the evaporation of a
  /// body of salt water.
  /// - "typeWater" : Features can be TYPE_WATER if we don't have enough
  /// information to properly type the body of water. TYPE_WATER is also used as
  /// the type for child features that compose a TYPE_RIVER feature.
  /// - "typeOcean" : One of the large salt-water bodies that covers most of the
  /// globe.
  /// - "typeBay" : An ocean subdivision formed by a coastal indentation.
  /// Includes coves and gulfs.
  /// - "typeBight" : An open body of water formed by a slight coastal
  /// indentation.
  /// - "typeLagoon"
  /// - "typeSea" : An ocean subdivision more or less confined by land and
  /// islands.
  /// - "typeStrait" : A long narrow ocean subdivision. Includes sounds.
  /// - "typeInlet"
  /// - "typeFjord"
  /// - "typeLake" : An inland body of standing water.
  /// - "typeSeasonalLake" : A lake that dries up part of the year.
  /// - "typeReservoir" : An artificial body of water, possibly created by a
  /// dam, often used for irrigation or house use.
  /// - "typePond"
  /// - "typeRiver" : An inland body of moving water, or parts associated with
  /// it in which there is little or no current (backwater).
  /// - "typeRapids"
  /// - "typeDistributary" : A branch which flows away from the main river.
  /// Includes deltas.
  /// - "typeConfluence" : A place where two or more rivers join.
  /// - "typeWaterfall"
  /// - "typeSpring" : A place where ground water flows naturally out of the
  /// ground.
  /// - "typeGeyser"
  /// - "typeHotSpring"
  /// - "typeSeasonalRiver" : A river that dries up part of the year.
  /// - "typeWadi" : A dry riverbed that occasionally receives flashfloods.
  /// - "typeEstuary" : A place at the end of a river where fresh and salt water
  /// mix. Includes tidal creeks and limans.
  /// - "typeWetland" : Land that is usually flooded. Includes bogs, marshes,
  /// flats, moors, and swamps.
  /// - "typeWaterNavigation"
  /// - "typeFord" : A shallow place where water may be waded through.
  /// - "typeCanal" : A narrow passage used by boats. Normally artificial.
  /// - "typeHarbor" : A deep place near a shore where ships commonly drop
  /// anchor.
  /// - "typeChannel" : A deep part in a body of water that is suitable for
  /// navigation. Includes narrows.
  /// - "typeReef" : Rocks, coral, sandbars, or other features beneath the
  /// surface of the water that pose a hazard to passing ships. Includes shoals.
  /// - "typeReefFlat" : A relatively shallow zone of the back reef located
  /// closest to the shore, that may be exposed at low tide.
  /// - "typeReefGrowth" : A small section of rocks, coral, sandbars, or other
  /// features beneath the surface of the water that forms part of a reef.
  /// - "typeReefExtent" : The full extent of the reef complex.
  /// - "typeReefRockSubmerged" : A submerged rock in the water.
  /// - "typeIrrigation" : Man-made (and sometimes natural) channels used to
  /// move water. This type was used for both dam structures and water that is
  /// hold back by dams. We should use TYPE_COMPOUND_BUILDING for dam structures
  /// and TYPE_RESERVOIR for water.
  /// - "typeDam" : DEPRECATED
  /// - "typeDrinkingWater"
  /// - "typeCurrent" : Includes overfalls.
  /// - "typeWateringHole" : A natural depression filled with water where
  /// animals come to drink.
  /// - "typeTectonic" : ABSTRACT This type is incorrectly under TYPE_TECTONIC
  /// instead of TYPE_WATER. This was a mistake and is now fixed. See
  /// TYPE_WATERING_HOLE for the replacement.
  /// - "typeWateringHoleDeprecated" : DEPRECATED
  /// - "typeVolcano"
  /// - "typeLavaField"
  /// - "typeFissure"
  /// - "typeFault"
  /// - "typeLandMass"
  /// - "typeContinent"
  /// - "typeIsland"
  /// - "typeAtoll"
  /// - "typeOceanRockExposed" : An exposed rock in the water.
  /// - "typeCay" : A small, low-elevation, sandy island formed on the surface
  /// of coral reefs
  /// - "typePeninsula" : A stretch of land projecting into water. Includes
  /// capes and spits.
  /// - "typeIsthmus" : A strip of land connecting two larger land masses, such
  /// as continents.
  /// - "typeElevated" : Features that are notable for being high (or low), or
  /// for having sudden changes in elevation. These features might have an
  /// "elevation" extension to specify the actual elevation. See ElevationProto
  /// for more information.
  /// - "typePeak" : Elevations that have a distinctive peak.
  /// - "typeNunatak" : A peak or ridge of a mountain that extends through a
  /// glacier.
  /// - "typeSpur" : A subsidiary peak of a mountain.
  /// - "typePass" : A route over an otherwise difficult to traverse feature.
  /// Includes saddle.
  /// - "typePlateau" : Elevations that are flat on top. Includes mesas and
  /// buttes.
  /// - "typeRidge" : A ridge is a geographical feature consisting of a chain of
  /// mountains or hills that form a continuous elevated crest with a single
  /// ridgeline for some distance.
  /// - "typeRavine" : Steep declines usually carved by erosion. Includes
  /// valleys, canyons, ditches, and gorges.
  /// - "typeCrater" : Depressions causes by impact, explosion, and sometimes
  /// sink-holes.
  /// - "typeKarst" : Topography formed on limestone and gypsum by dissolution
  /// with sinkholes, caves, etc.
  /// - "typeCliff" : A vertical or nearly vertical slope. Includes escarpments.
  /// - "typeVista" : An elevated place that is notable for having a good view.
  /// Raster digital elevation data. This is not a type to be used by providers
  /// or consumed by clients.
  /// - "typeDigitalElevationModel" : RESERVED
  /// - "typeUpland" : Land along streams higher than the alluvial plain or
  /// stream terrace.
  /// - "typeTerrace"
  /// - "typeSlope" : Land not so steep as a cliff, but changing elevation.
  /// Includes slides.
  /// - "typeContourLine" : All the points on the polygon are at the same
  /// elevation.
  /// - "typePan" : A near-level shallow, natural depression or basin, usually
  /// containing an intermittent lake, pond, or pool.
  /// - "typeUnstableHillside"
  /// - "typeMountainRange" : A series of mountains or hills ranged in a line
  /// and connected by high ground. Mountain ranges usually consist of many
  /// smaller ridges. For example, the Himalayas, the Andes. the Alps, etc.
  /// - "typeUndersea" : Features that are notable for being high (or low), or
  /// for having sudden changes in elevation. These features might have an
  /// "elevation" extension to specify the actual elevation. See ElevationProto
  /// for more information.
  /// - "typeSubmarineSeamount" : includes peaks, ranges, and spurs
  /// - "typeSubmarineRidge"
  /// - "typeSubmarineGap" : includes saddles
  /// - "typeSubmarinePlateau"
  /// - "typeSubmarineDeep"
  /// - "typeSubmarineValley" : includes trenches and troughs
  /// - "typeSubmarineBasin"
  /// - "typeSubmarineSlope"
  /// - "typeSubmarineCliff"
  /// - "typeSubmarinePlain"
  /// - "typeSubmarineFractureZone"
  /// - "typeCave" : Don't use 0xA7. Use 8 bits for additional types under
  /// TYPE_NATURAL_FEATURE, so we don't run out of space. The following are
  /// miscellaneous natural features that don't fit any of the categories above.
  /// - "typeRock"
  /// - "typeArchipelago" : A feature representing a group or chain of islands.
  /// - "typePostal" : ABSTRACT
  /// - "typePostalCode" : This is the type for postal codes which are complete
  /// and independent enough that there should be a feature for them (e.g. US
  /// 5-digit ZIP codes). For even more detailed suffixes that further subdivide
  /// a postal code (such as the +4 component in US ZIP codes), store the
  /// information in a TYPE_POSTAL_CODE_SUFFIX address component. When a range
  /// or set of postal codes share the same geographical area, e.g. because a
  /// precise subdivision does not exist or this subdivision is unknown, this
  /// type is used for each individual postal code.
  /// - "typePostalCodePrefix" : A prefix portion of a postal code which does
  /// not meet the requirements for TYPE_POSTAL_CODE, but which is useful to
  /// search for, for example UK outcodes.
  /// - "typePremise" : DEPRECATED
  /// - "typeSubPremise" : DEPRECATED This is deprecated and we want to use
  /// TYPE_COMPOUND_SECTION instead.
  /// - "typeSuite" : DEPRECATED
  /// - "typePostTown" : The term "post town" is used for a locality-like-entity
  /// that is only used for postal addresses.
  /// - "typePostalRound" : DEPRECATED
  /// - "typeMetaFeature" : ABSTRACT
  /// - "typeDataSource" : Every data source used in constructing a data
  /// repository has a corresponding feature that provides more information
  /// about that data source. The extra information is stored in the optional
  /// data_source field below.
  /// - "typeLocale" : A locale feature provides region specific conventions
  /// such as preferred language and formatting details for time, date, and
  /// currency values. Locales aren't necessary defined by physical geographic
  /// features, so they are classified as meta-features.
  /// - "typeTimezone" : A timezone feature is used to specify the region
  /// covering an international timezone. When a point is covered by multiple
  /// timezone features, the most specific one can be used to compute the local
  /// time at this point. Most specific implies a much smaller region or the one
  /// that is closer to the center. A feature's timezone can be specified in the
  /// repeated related_timezone field.
  /// - "typeBusinessChain" : A business chain feature is used to represent a
  /// chain, e.g. Starbucks, McDonald's, etc. Other features representing
  /// specific stores/franchises of this chain may refer to one such feature via
  /// RELATION_MEMBER_OF_CHAIN. This is not strictly reserved to commercial
  /// chains but can also be used to model organizations such as the Red Cross
  /// or the United Nations.
  /// - "typePhoneNumberPrefix" : A phone number prefix feature is used to
  /// specify the region where phone numbers (typically fixed-line numbers) must
  /// begin with a certain prefix. Any phone number prefix down to any level of
  /// granularity could be represented by this type.
  /// - "typePhoneNumberAreaCode" : A phone number area code is a prefix which
  /// also coincides with the area code, or national destination code, of a
  /// particular region.
  /// - "typeBusinessCorridor" : A Business Corridor is a dense cluster of
  /// semantically similar establishments. TYPE_BUSINESS_CORRIDOR features are
  /// distinguished from TYPE_COLLOQUIAL_AREA features because the corridors are
  /// not under the political hierarchy, are allowed to be nameless, and may not
  /// correspond to well-known real world locations. For more details, see
  /// go/geo-corridors-schema.
  /// - "typeAddressTemplate" : An address template feature provides
  /// region-specific conventions for structuring addresses. These features
  /// aren't necessarily defined by physical geographic features, so they are
  /// classified as meta-features.
  /// - "typeTransitAgency" : A transit agency operates a number of lines,
  /// typically all in the same city, region or country. See also
  /// transitagency.proto
  /// - "typeFutureGeometry" : A feature whose geometry is planned to replace
  /// the geometry on another feature.
  /// - "typeEvent" : DEPRECATED
  /// - "typeEarthquake" : DEPRECATED
  /// - "typeHurricane" : DEPRECATED
  /// - "typeWeatherCondition" : DEPRECATED
  /// - "typeTransient" : RESERVED
  /// - "typeEntrance" : A portal of entry or exit to another feature. Examples:
  /// - Subway station entrance. - Parking lot entrance.
  /// - "typeCartographic" : Cartographic features are used to capture
  /// real-world objects for which there is no current desire to model any
  /// specific attributes. These are only useful to make the map tiles look
  /// pretty.
  /// - "typeHighTension" : DEPRECATED
  /// - "typeSkiTrail" : Also see skitrail.proto
  /// - "typeSkiLift" : Also see skilift.proto
  /// - "typeSkiBoundary" : Also see skiboundary.proto
  /// - "typeWatershedBoundary"
  /// - "typeTarmac" : Starting with TYPE_TARMAC, we use longer IDs, so that we
  /// can expand the number of feature types under TYPE_CARTOGRAPHIC.
  /// - "typeWall" : Use TYPE_COMPOUND_GROUND and appropriate gcids for the next
  /// two.
  /// - "typePicnicArea" : DEPRECATED
  /// - "typePlayGround" : DEPRECATED
  /// - "typeTrailHead"
  /// - "typeGolfTeeingGround" : Sub-types within a golf course.
  /// - "typeGolfPuttingGreen"
  /// - "typeGolfRough"
  /// - "typeGolfSandBunker"
  /// - "typeGolfFairway"
  /// - "typeGolfHole" : Use TYPE_ESTABLISHMENT_POI and gcid:golf_shop for golf
  /// shops instead.
  /// - "typeDeprecatedGolfShop" : DEPRECATED
  /// - "typeCampingSite" : DEPRECATED
  /// - "typeDesignatedBarbecuePit"
  /// - "typeDesignatedCookingArea"
  /// - "typeCampfirePit"
  /// - "typeWaterFountain"
  /// - "typeLitterReceptacle"
  /// - "typeLockerArea"
  /// - "typeAnimalEnclosure" : Subtype within a zoo - a cage or fenced-off or
  /// otherwise delineated area containing animals.
  /// - "typeCartographicLine" : A line for a cartographic detail. For example
  /// the international date line. Such features should have polyline geometry.
  /// - "typeEstablishment" : ABSTRACT This type is being replaced by
  /// TYPE_COMPOUND_GROUNDS. For further details, see go/compounds-v2
  /// - "typeEstablishmentGrounds" : DEPRECATED This type has been replaced by
  /// TYPE_COMPOUND_BUILDING. For further details, see go/oyster-compounds
  /// - "typeEstablishmentBuilding" : DEPRECATED
  /// - "typeEstablishmentPoi" : Establishment POIs can be referenced by
  /// TYPE_COMPOUND features using the RELATION_PRIMARILY_OCCUPIED_BY. This is
  /// the reciprocal relation of the RELATION_OCCUPIES.
  /// - "typeEstablishmentService" : Represents service-only establishments
  /// (those without a storefront location). NOTE(tcain): Using value 0xD441,
  /// since we could find ourselves with a need to differentiate service areas
  /// from online-only at this level in the future, but still benefit from being
  /// able to group those under a common parent, disjoint from
  /// TYPE_ESTABLISHMENT_POI.
  /// - "typeCelestial" : The root of types of features that are in the sky,
  /// rather than on the earth. There will eventually be a hierarchy of types
  /// here.
  /// - "typeRoadMonitor" : Features responsible for monitoring traffic on roads
  /// (usually for speed). Includes cameras at particular points as well as
  /// monitors that cover larger spans. Features of this type should have a
  /// corresponding gcid that specifies the correct subtype (e.g.
  /// gcid:road_camera or gcid:speed_camera_zone). This type was originally
  /// named as TYPE_ROAD_CAMERA.
  /// - "typePublicSpacesAndMonuments" : ABSTRACT
  /// - "typeStatue" : Note that this type does not distinguish the nature of
  /// the statue (religious, historical, memorial, tourist, ...).
  /// - "typeTownSquare" : Open space used for events, gathering, or as
  /// market-place.
  /// - "typeLevel" : A feature used to represent a logical level, e.g. floor.
  /// - "typeCompound" : ABSTRACT
  /// - "typeCompoundGrounds" : e.g. campus, compound, parcel.
  /// - "typeCompoundBuilding" : e.g. single family dwelling, office building.
  /// - "typeCompoundSection" : e.g. suite, room, hallway, cubicle.
  /// - "typeTerminalPoint" : A terminal point represents a good location for a
  /// user to meet a taxi, ridesharing vehicle, or general driver.
  /// - "typeRegulatedArea" : An area controlled in some way by an authoritative
  /// source, such as a government-designated COVID containment zone. Features
  /// of this type should have one or more gcids corresponding to their specific
  /// regulation.
  /// - "typeDoNotUseReservedToCatchGeneratedFiles" : DEPRECATED
  /// - "typeUnknown" : A feature of completely unknown type. This should only
  /// be used when absolutely necessary. One example in which this type is
  /// useful is in the Chinese importer, which must heuristically segment
  /// addresses into components - it often does not know what types to make
  /// those components. Please note that the Oyster address formatter does not
  /// currently support address components of TYPE_UNKNOWN well.
  core.String? featureType;

  /// Precision of the center point (lat/long) of the geocoded FeatureProto
  core.double? positionPrecisionMeters;

  /// The query sent to the geocoder
  core.String? queryString;

  GeocodingSummary({
    this.addressUnderstood,
    this.featureId,
    this.featureType,
    this.positionPrecisionMeters,
    this.queryString,
  });

  GeocodingSummary.fromJson(core.Map _json)
      : this(
          addressUnderstood: _json.containsKey('addressUnderstood')
              ? _json['addressUnderstood'] as core.bool
              : null,
          featureId: _json.containsKey('featureId')
              ? FeatureIdProto.fromJson(
                  _json['featureId'] as core.Map<core.String, core.dynamic>)
              : null,
          featureType: _json.containsKey('featureType')
              ? _json['featureType'] as core.String
              : null,
          positionPrecisionMeters: _json.containsKey('positionPrecisionMeters')
              ? (_json['positionPrecisionMeters'] as core.num).toDouble()
              : null,
          queryString: _json.containsKey('queryString')
              ? _json['queryString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressUnderstood != null) 'addressUnderstood': addressUnderstood!,
        if (featureId != null) 'featureId': featureId!,
        if (featureType != null) 'featureType': featureType!,
        if (positionPrecisionMeters != null)
          'positionPrecisionMeters': positionPrecisionMeters!,
        if (queryString != null) 'queryString': queryString!,
      };
}

/// Describes a political geography.
class GeographicDivision {
  /// Any other valid OCD IDs that refer to the same division.\n\nBecause OCD
  /// IDs are meant to be human-readable and at least somewhat predictable,
  /// there are occasionally several identifiers for a single division.
  ///
  /// These identifiers are defined to be equivalent to one another, and one is
  /// always indicated as the primary identifier. The primary identifier will be
  /// returned in ocd_id above, and any other equivalent valid identifiers will
  /// be returned in this list.\n\nFor example, if this division's OCD ID is
  /// ocd-division/country:us/district:dc, this will contain
  /// ocd-division/country:us/state:dc.
  core.List<core.String>? alsoKnownAs;

  /// The name of the division.
  core.String? name;

  /// List of indices in the offices array, one for each office elected from
  /// this division.
  ///
  /// Will only be present if includeOffices was true (or absent) in the
  /// request.
  core.List<core.int>? officeIndices;

  GeographicDivision({
    this.alsoKnownAs,
    this.name,
    this.officeIndices,
  });

  GeographicDivision.fromJson(core.Map _json)
      : this(
          alsoKnownAs: _json.containsKey('alsoKnownAs')
              ? (_json['alsoKnownAs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          officeIndices: _json.containsKey('officeIndices')
              ? (_json['officeIndices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alsoKnownAs != null) 'alsoKnownAs': alsoKnownAs!,
        if (name != null) 'name': name!,
        if (officeIndices != null) 'officeIndices': officeIndices!,
      };
}

/// This is proto2's version of MessageSet.
typedef MessageSet = $Empty;

/// Information about an Office held by one or more Officials.
class Office {
  /// The OCD ID of the division with which this office is associated.
  core.String? divisionId;

  /// The levels of government of which this office is part.
  ///
  /// There may be more than one in cases where a jurisdiction effectively acts
  /// at two different levels of government; for example, the mayor of the
  /// District of Columbia acts at "locality" level, but also effectively at
  /// both "administrative-area-2" and "administrative-area-1".
  core.List<core.String>? levels;

  /// The human-readable name of the office.
  core.String? name;

  /// List of indices in the officials array of people who presently hold this
  /// office.
  core.List<core.int>? officialIndices;

  /// The roles which this office fulfills.
  ///
  /// Roles are not meant to be exhaustive, or to exactly specify the entire set
  /// of responsibilities of a given office, but are meant to be rough
  /// categories that are useful for general selection from or sorting of a list
  /// of offices.
  core.List<core.String>? roles;

  /// A list of sources for this office.
  ///
  /// If multiple sources are listed, the data has been aggregated from those
  /// sources.
  core.List<Source>? sources;

  Office({
    this.divisionId,
    this.levels,
    this.name,
    this.officialIndices,
    this.roles,
    this.sources,
  });

  Office.fromJson(core.Map _json)
      : this(
          divisionId: _json.containsKey('divisionId')
              ? _json['divisionId'] as core.String
              : null,
          levels: _json.containsKey('levels')
              ? (_json['levels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          officialIndices: _json.containsKey('officialIndices')
              ? (_json['officialIndices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (divisionId != null) 'divisionId': divisionId!,
        if (levels != null) 'levels': levels!,
        if (name != null) 'name': name!,
        if (officialIndices != null) 'officialIndices': officialIndices!,
        if (roles != null) 'roles': roles!,
        if (sources != null) 'sources': sources!,
      };
}

/// Information about a person holding an elected office.
class Official {
  /// Addresses at which to contact the official.
  core.List<SimpleAddressType>? address;

  /// A list of known (social) media channels for this official.
  core.List<Channel>? channels;

  /// The direct email addresses for the official.
  core.List<core.String>? emails;

  /// Detailed summary about the official's address's geocoding
  core.List<GeocodingSummary>? geocodingSummaries;

  /// The official's name.
  core.String? name;

  /// The full name of the party the official belongs to.
  core.String? party;

  /// The official's public contact phone numbers.
  core.List<core.String>? phones;

  /// A URL for a photo of the official.
  core.String? photoUrl;

  /// The official's public website URLs.
  core.List<core.String>? urls;

  Official({
    this.address,
    this.channels,
    this.emails,
    this.geocodingSummaries,
    this.name,
    this.party,
    this.phones,
    this.photoUrl,
    this.urls,
  });

  Official.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? (_json['address'] as core.List)
                  .map((value) => SimpleAddressType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          geocodingSummaries: _json.containsKey('geocodingSummaries')
              ? (_json['geocodingSummaries'] as core.List)
                  .map((value) => GeocodingSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          party:
              _json.containsKey('party') ? _json['party'] as core.String : null,
          phones: _json.containsKey('phones')
              ? (_json['phones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          photoUrl: _json.containsKey('photoUrl')
              ? _json['photoUrl'] as core.String
              : null,
          urls: _json.containsKey('urls')
              ? (_json['urls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (channels != null) 'channels': channels!,
        if (emails != null) 'emails': emails!,
        if (geocodingSummaries != null)
          'geocodingSummaries': geocodingSummaries!,
        if (name != null) 'name': name!,
        if (party != null) 'party': party!,
        if (phones != null) 'phones': phones!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (urls != null) 'urls': urls!,
      };
}

/// A location where a voter can vote.
///
/// This may be an early vote site, an election day voting location, or a drop
/// off location for a completed ballot.
class PollingLocation {
  /// The address of the location.
  SimpleAddressType? address;

  /// The last date that this early vote site or drop off location may be used.
  ///
  /// This field is not populated for polling locations.
  core.String? endDate;

  /// Latitude of the location, in degrees north of the equator.
  ///
  /// Note this field may not be available for some locations.
  core.double? latitude;

  /// Longitude of the location, in degrees east of the Prime Meridian.
  ///
  /// Note this field may not be available for some locations.
  core.double? longitude;

  /// The name of the early vote site or drop off location.
  ///
  /// This field is not populated for polling locations.
  core.String? name;

  /// Notes about this location (e.g. accessibility ramp or entrance to use).
  core.String? notes;

  /// A description of when this location is open.
  core.String? pollingHours;

  /// A list of sources for this location.
  ///
  /// If multiple sources are listed the data has been aggregated from those
  /// sources.
  core.List<Source>? sources;

  /// The first date that this early vote site or drop off location may be used.
  ///
  /// This field is not populated for polling locations.
  core.String? startDate;

  /// The services provided by this early vote site or drop off location.
  ///
  /// This field is not populated for polling locations.
  core.String? voterServices;

  PollingLocation({
    this.address,
    this.endDate,
    this.latitude,
    this.longitude,
    this.name,
    this.notes,
    this.pollingHours,
    this.sources,
    this.startDate,
    this.voterServices,
  });

  PollingLocation.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? SimpleAddressType.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes:
              _json.containsKey('notes') ? _json['notes'] as core.String : null,
          pollingHours: _json.containsKey('pollingHours')
              ? _json['pollingHours'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
          voterServices: _json.containsKey('voterServices')
              ? _json['voterServices'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (endDate != null) 'endDate': endDate!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (pollingHours != null) 'pollingHours': pollingHours!,
        if (sources != null) 'sources': sources!,
        if (startDate != null) 'startDate': startDate!,
        if (voterServices != null) 'voterServices': voterServices!,
      };
}

class Precinct {
  /// ID of the AdministrationRegion message for this precinct.
  ///
  /// Corresponds to LocalityId xml tag.
  core.String? administrationRegionId;

  /// ID(s) of the Contest message(s) for this precinct.
  core.List<core.String>? contestId;

  /// Dataset ID.
  ///
  /// What datasets our Precincts come from.
  ///
  /// Required.
  core.String? datasetId;

  /// ID(s) of the PollingLocation message(s) for this precinct.
  core.List<core.String>? earlyVoteSiteId;

  /// ID(s) of the ElectoralDistrict message(s) for this precinct.
  core.List<core.String>? electoralDistrictId;

  /// A unique identifier for this precinct.
  ///
  /// Required.
  core.String? id;

  /// Specifies if the precinct runs mail-only elections.
  core.bool? mailOnly;

  /// The name of the precinct.
  ///
  /// Required.
  core.String? name;

  /// The number of the precinct.
  core.String? number;

  /// Encouraged.
  ///
  /// The OCD ID of the precinct
  core.List<core.String>? ocdId;

  /// ID(s) of the PollingLocation message(s) for this precinct.
  core.List<core.String>? pollingLocationId;

  /// ID(s) of the SpatialBoundary message(s) for this precinct.
  ///
  /// Used to specify a geometrical boundary of the precinct.
  core.List<core.String>? spatialBoundaryId;

  /// If present, this proto corresponds to one portion of split precinct.
  ///
  /// Other portions of this precinct are guaranteed to have the same `name`. If
  /// not present, this proto represents a full precicnt.
  core.String? splitName;

  /// Specifies the ward the precinct is contained within.
  core.String? ward;

  Precinct({
    this.administrationRegionId,
    this.contestId,
    this.datasetId,
    this.earlyVoteSiteId,
    this.electoralDistrictId,
    this.id,
    this.mailOnly,
    this.name,
    this.number,
    this.ocdId,
    this.pollingLocationId,
    this.spatialBoundaryId,
    this.splitName,
    this.ward,
  });

  Precinct.fromJson(core.Map _json)
      : this(
          administrationRegionId: _json.containsKey('administrationRegionId')
              ? _json['administrationRegionId'] as core.String
              : null,
          contestId: _json.containsKey('contestId')
              ? (_json['contestId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          earlyVoteSiteId: _json.containsKey('earlyVoteSiteId')
              ? (_json['earlyVoteSiteId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          electoralDistrictId: _json.containsKey('electoralDistrictId')
              ? (_json['electoralDistrictId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mailOnly: _json.containsKey('mailOnly')
              ? _json['mailOnly'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number: _json.containsKey('number')
              ? _json['number'] as core.String
              : null,
          ocdId: _json.containsKey('ocdId')
              ? (_json['ocdId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pollingLocationId: _json.containsKey('pollingLocationId')
              ? (_json['pollingLocationId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spatialBoundaryId: _json.containsKey('spatialBoundaryId')
              ? (_json['spatialBoundaryId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          splitName: _json.containsKey('splitName')
              ? _json['splitName'] as core.String
              : null,
          ward: _json.containsKey('ward') ? _json['ward'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (administrationRegionId != null)
          'administrationRegionId': administrationRegionId!,
        if (contestId != null) 'contestId': contestId!,
        if (datasetId != null) 'datasetId': datasetId!,
        if (earlyVoteSiteId != null) 'earlyVoteSiteId': earlyVoteSiteId!,
        if (electoralDistrictId != null)
          'electoralDistrictId': electoralDistrictId!,
        if (id != null) 'id': id!,
        if (mailOnly != null) 'mailOnly': mailOnly!,
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (ocdId != null) 'ocdId': ocdId!,
        if (pollingLocationId != null) 'pollingLocationId': pollingLocationId!,
        if (spatialBoundaryId != null) 'spatialBoundaryId': spatialBoundaryId!,
        if (splitName != null) 'splitName': splitName!,
        if (ward != null) 'ward': ward!,
      };
}

class RepresentativeInfoData {
  /// A map of political geographic divisions that contain the requested
  /// address, keyed by the unique Open Civic Data identifier for this division.
  core.Map<core.String, GeographicDivision>? divisions;

  /// Elected offices referenced by the divisions listed above.
  ///
  /// Will only be present if includeOffices was true in the request.
  core.List<Office>? offices;

  /// Officials holding the offices listed above.
  ///
  /// Will only be present if includeOffices was true in the request.
  core.List<Official>? officials;

  RepresentativeInfoData({
    this.divisions,
    this.offices,
    this.officials,
  });

  RepresentativeInfoData.fromJson(core.Map _json)
      : this(
          divisions: _json.containsKey('divisions')
              ? (_json['divisions'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GeographicDivision.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          offices: _json.containsKey('offices')
              ? (_json['offices'] as core.List)
                  .map((value) => Office.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          officials: _json.containsKey('officials')
              ? (_json['officials'] as core.List)
                  .map((value) => Official.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (divisions != null) 'divisions': divisions!,
        if (offices != null) 'offices': offices!,
        if (officials != null) 'officials': officials!,
      };
}

/// The result of a representative info lookup query.
class RepresentativeInfoResponse {
  /// A map of political geographic divisions that contain the requested
  /// address, keyed by the unique Open Civic Data identifier for this division.
  core.Map<core.String, GeographicDivision>? divisions;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "civicinfo#representativeInfoResponse".
  core.String? kind;

  /// The normalized version of the requested address
  SimpleAddressType? normalizedInput;

  /// Elected offices referenced by the divisions listed above.
  ///
  /// Will only be present if includeOffices was true in the request.
  core.List<Office>? offices;

  /// Officials holding the offices listed above.
  ///
  /// Will only be present if includeOffices was true in the request.
  core.List<Official>? officials;

  RepresentativeInfoResponse({
    this.divisions,
    this.kind,
    this.normalizedInput,
    this.offices,
    this.officials,
  });

  RepresentativeInfoResponse.fromJson(core.Map _json)
      : this(
          divisions: _json.containsKey('divisions')
              ? (_json['divisions'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GeographicDivision.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          normalizedInput: _json.containsKey('normalizedInput')
              ? SimpleAddressType.fromJson(_json['normalizedInput']
                  as core.Map<core.String, core.dynamic>)
              : null,
          offices: _json.containsKey('offices')
              ? (_json['offices'] as core.List)
                  .map((value) => Office.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          officials: _json.containsKey('officials')
              ? (_json['officials'] as core.List)
                  .map((value) => Official.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (divisions != null) 'divisions': divisions!,
        if (kind != null) 'kind': kind!,
        if (normalizedInput != null) 'normalizedInput': normalizedInput!,
        if (offices != null) 'offices': offices!,
        if (officials != null) 'officials': officials!,
      };
}

/// A simple representation of an address.
class SimpleAddressType {
  /// The city or town for the address.
  core.String? city;

  /// The street name and number of this address.
  core.String? line1;

  /// The second line the address, if needed.
  core.String? line2;

  /// The third line of the address, if needed.
  core.String? line3;

  /// The name of the location.
  core.String? locationName;

  /// The US two letter state abbreviation of the address.
  core.String? state;

  /// The US Postal Zip Code of the address.
  core.String? zip;

  SimpleAddressType({
    this.city,
    this.line1,
    this.line2,
    this.line3,
    this.locationName,
    this.state,
    this.zip,
  });

  SimpleAddressType.fromJson(core.Map _json)
      : this(
          city: _json.containsKey('city') ? _json['city'] as core.String : null,
          line1:
              _json.containsKey('line1') ? _json['line1'] as core.String : null,
          line2:
              _json.containsKey('line2') ? _json['line2'] as core.String : null,
          line3:
              _json.containsKey('line3') ? _json['line3'] as core.String : null,
          locationName: _json.containsKey('locationName')
              ? _json['locationName'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          zip: _json.containsKey('zip') ? _json['zip'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (city != null) 'city': city!,
        if (line1 != null) 'line1': line1!,
        if (line2 != null) 'line2': line2!,
        if (line3 != null) 'line3': line3!,
        if (locationName != null) 'locationName': locationName!,
        if (state != null) 'state': state!,
        if (zip != null) 'zip': zip!,
      };
}

/// Contains information about the data source for the element containing it.
class Source {
  /// The name of the data source.
  core.String? name;

  /// Whether this data comes from an official government source.
  core.bool? official;

  Source({
    this.name,
    this.official,
  });

  Source.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          official: _json.containsKey('official')
              ? _json['official'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (official != null) 'official': official!,
      };
}

/// The result of a voter info lookup query.
class VoterInfoResponse {
  /// Contests that will appear on the voter's ballot.
  core.List<Contest>? contests;

  /// Locations where a voter is eligible to drop off a completed ballot.
  ///
  /// The voter must have received and completed a ballot prior to arriving at
  /// the location. The location may not have ballots available on the premises.
  /// These locations could be open on or before election day as indicated in
  /// the pollingHours field.
  core.List<PollingLocation>? dropOffLocations;

  /// Locations where the voter is eligible to vote early, prior to election
  /// day.
  core.List<PollingLocation>? earlyVoteSites;

  /// The election that was queried.
  Election? election;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "civicinfo#voterInfoResponse".
  core.String? kind;

  /// Specifies whether voters in the precinct vote only by mailing their
  /// ballots (with the possible option of dropping off their ballots as well).
  core.bool? mailOnly;

  /// The normalized version of the requested address
  SimpleAddressType? normalizedInput;

  /// When there are multiple elections for a voter address, the otherElections
  /// field is populated in the API response and there are two possibilities: 1.
  ///
  /// If the earliest election is not the intended election, specify the
  /// election ID of the desired election in a second API request using the
  /// electionId field. 2. If these elections occur on the same day, the API
  /// doesn?t return any polling location, contest, or election official
  /// information to ensure that an additional query is made. For user-facing
  /// applications, we recommend displaying these elections to the user to
  /// disambiguate. A second API request using the electionId field should be
  /// made for the election that is relevant to the user.
  core.List<Election>? otherElections;

  /// Locations where the voter is eligible to vote on election day.
  core.List<PollingLocation>? pollingLocations;
  core.String? precinctId;

  /// The precincts that match this voter's address.
  ///
  /// Will only be returned for project IDs which have been whitelisted as
  /// "partner projects".
  core.List<Precinct>? precincts;

  /// Local Election Information for the state that the voter votes in.
  ///
  /// For the US, there will only be one element in this array.
  core.List<AdministrationRegion>? state;

  VoterInfoResponse({
    this.contests,
    this.dropOffLocations,
    this.earlyVoteSites,
    this.election,
    this.kind,
    this.mailOnly,
    this.normalizedInput,
    this.otherElections,
    this.pollingLocations,
    this.precinctId,
    this.precincts,
    this.state,
  });

  VoterInfoResponse.fromJson(core.Map _json)
      : this(
          contests: _json.containsKey('contests')
              ? (_json['contests'] as core.List)
                  .map((value) => Contest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dropOffLocations: _json.containsKey('dropOffLocations')
              ? (_json['dropOffLocations'] as core.List)
                  .map((value) => PollingLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          earlyVoteSites: _json.containsKey('earlyVoteSites')
              ? (_json['earlyVoteSites'] as core.List)
                  .map((value) => PollingLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          election: _json.containsKey('election')
              ? Election.fromJson(
                  _json['election'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mailOnly: _json.containsKey('mailOnly')
              ? _json['mailOnly'] as core.bool
              : null,
          normalizedInput: _json.containsKey('normalizedInput')
              ? SimpleAddressType.fromJson(_json['normalizedInput']
                  as core.Map<core.String, core.dynamic>)
              : null,
          otherElections: _json.containsKey('otherElections')
              ? (_json['otherElections'] as core.List)
                  .map((value) => Election.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pollingLocations: _json.containsKey('pollingLocations')
              ? (_json['pollingLocations'] as core.List)
                  .map((value) => PollingLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          precinctId: _json.containsKey('precinctId')
              ? _json['precinctId'] as core.String
              : null,
          precincts: _json.containsKey('precincts')
              ? (_json['precincts'] as core.List)
                  .map((value) => Precinct.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state: _json.containsKey('state')
              ? (_json['state'] as core.List)
                  .map((value) => AdministrationRegion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contests != null) 'contests': contests!,
        if (dropOffLocations != null) 'dropOffLocations': dropOffLocations!,
        if (earlyVoteSites != null) 'earlyVoteSites': earlyVoteSites!,
        if (election != null) 'election': election!,
        if (kind != null) 'kind': kind!,
        if (mailOnly != null) 'mailOnly': mailOnly!,
        if (normalizedInput != null) 'normalizedInput': normalizedInput!,
        if (otherElections != null) 'otherElections': otherElections!,
        if (pollingLocations != null) 'pollingLocations': pollingLocations!,
        if (precinctId != null) 'precinctId': precinctId!,
        if (precincts != null) 'precincts': precincts!,
        if (state != null) 'state': state!,
      };
}
