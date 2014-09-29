library googleapis.civicinfo.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** An API for accessing civic information. */
class CivicinfoApi {

  final common_internal.ApiRequester _requester;

  DivisionsResourceApi get divisions => new DivisionsResourceApi(_requester);
  ElectionsResourceApi get elections => new ElectionsResourceApi(_requester);
  RepresentativesResourceApi get representatives => new RepresentativesResourceApi(_requester);

  CivicinfoApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "civicinfo/v1/");
}


/** Not documented yet. */
class DivisionsResourceApi {
  final common_internal.ApiRequester _requester;

  DivisionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Searches for political divisions by their natural name or OCD ID.
   *
   * Request parameters:
   *
   * [query] - The search query. Queries can cover any parts of a OCD ID or a
   * human readable division name. All words given in the query are treated as
   * required patterns. In addition to that, most query operators of the Apache
   * Lucene library are supported. See
   * http://lucene.apache.org/core/2_9_4/queryparsersyntax.html
   *
   * Completes with a [DivisionSearchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DivisionSearchResponse> search({core.String query}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (query != null) {
      _queryParams["query"] = [query];
    }


    _url = 'representatives/division_search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DivisionSearchResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ElectionsResourceApi {
  final common_internal.ApiRequester _requester;

  ElectionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * List of available elections to query.
   *
   * Request parameters:
   *
   * Completes with a [ElectionsQueryResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ElectionsQueryResponse> electionQuery() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'elections';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ElectionsQueryResponse.fromJson(data));
  }

  /**
   * Looks up information relevant to a voter based on the voter's registered
   * address.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [electionId] - The unique ID of the election to look up. A list of election
   * IDs can be obtained at
   * https://www.googleapis.com/civicinfo/{version}/elections
   *
   * [officialOnly] - If set to true, only data from official state sources will
   * be returned.
   *
   * Completes with a [VoterInfoResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VoterInfoResponse> voterInfoQuery(VoterInfoRequest request, core.String electionId, {core.bool officialOnly}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (electionId == null) {
      throw new core.ArgumentError("Parameter electionId is required.");
    }
    if (officialOnly != null) {
      _queryParams["officialOnly"] = ["${officialOnly}"];
    }


    _url = 'voterinfo/' + common_internal.Escaper.ecapeVariable('$electionId') + '/lookup';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VoterInfoResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RepresentativesResourceApi {
  final common_internal.ApiRequester _requester;

  RepresentativesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Looks up political geography and representative information based on an
   * address or Open Civic Data division identifier.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [includeOffices] - Whether to return information about offices and
   * officials. If false, only the top-level district information will be
   * returned.
   *
   * [ocdId] - The division to look up. May only be specified if the address
   * field is not given in the request body.
   *
   * [recursive] - When ocd_id is supplied, return all divisions which are
   * hierarchically nested within the queried division. For example, if querying
   * ocd-division/country:us/district:dc, this would also return all DC's wards
   * and ANCs.
   *
   * Completes with a [RepresentativeInfoResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RepresentativeInfoResponse> representativeInfoQuery(RepresentativeInfoRequest request, {core.bool includeOffices, core.String ocdId, core.bool recursive}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (includeOffices != null) {
      _queryParams["includeOffices"] = ["${includeOffices}"];
    }
    if (ocdId != null) {
      _queryParams["ocdId"] = [ocdId];
    }
    if (recursive != null) {
      _queryParams["recursive"] = ["${recursive}"];
    }


    _url = 'representatives/lookup';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RepresentativeInfoResponse.fromJson(data));
  }

}



/** Describes information about a regional election administrative area. */
class AdministrationRegion {
  /** The election administration body for this area. */
  AdministrativeBody electionAdministrationBody;

  /**
   * An ID for this object. IDs may change in future requests and should not be
   * cached. Access to this field requires special access that can be requested
   * from the Request more link on the Quotas page.
   */
  core.String id;

  /**
   * The city or county that provides election information for this voter. This
   * object can have the same elements as state.
   */
  AdministrationRegion localJurisdiction;

  /** The name of the jurisdiction. */
  core.String name;

  /**
   * A list of sources for this area. If multiple sources are listed the data
   * has been aggregated from those sources.
   */
  core.List<Source> sources;


  AdministrationRegion();

  AdministrationRegion.fromJson(core.Map _json) {
    if (_json.containsKey("electionAdministrationBody")) {
      electionAdministrationBody = new AdministrativeBody.fromJson(_json["electionAdministrationBody"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("local_jurisdiction")) {
      localJurisdiction = new AdministrationRegion.fromJson(_json["local_jurisdiction"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sources")) {
      sources = _json["sources"].map((value) => new Source.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (electionAdministrationBody != null) {
      _json["electionAdministrationBody"] = (electionAdministrationBody).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (localJurisdiction != null) {
      _json["local_jurisdiction"] = (localJurisdiction).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * Information about an election administrative body (e.g. County Board of
 * Elections).
 */
class AdministrativeBody {
  /**
   * A URL provided by this administrative body for information on absentee
   * voting.
   */
  core.String absenteeVotingInfoUrl;

  /**
   * A URL provided by this administrative body to give contest information to
   * the voter.
   */
  core.String ballotInfoUrl;

  /** The mailing address of this administrative body. */
  SimpleAddressType correspondenceAddress;

  /**
   * A URL provided by this administrative body for looking up general election
   * information.
   */
  core.String electionInfoUrl;

  /** The election officials for this election administrative body. */
  core.List<ElectionOfficial> electionOfficials;

  /**
   * A URL provided by this administrative body for confirming that the voter is
   * registered to vote.
   */
  core.String electionRegistrationConfirmationUrl;

  /**
   * A URL provided by this administrative body for looking up how to register
   * to vote.
   */
  core.String electionRegistrationUrl;

  /**
   * A URL provided by this administrative body describing election rules to the
   * voter.
   */
  core.String electionRulesUrl;

  /** A description of the hours of operation for this administrative body. */
  core.String hoursOfOperation;

  /** The name of this election administrative body. */
  core.String name;

  /** The physical address of this administrative body. */
  SimpleAddressType physicalAddress;

  /** A description of the services this administrative body may provide. */
  core.List<core.String> voterServices;

  /**
   * A URL provided by this administrative body for looking up where to vote.
   */
  core.String votingLocationFinderUrl;


  AdministrativeBody();

  AdministrativeBody.fromJson(core.Map _json) {
    if (_json.containsKey("absenteeVotingInfoUrl")) {
      absenteeVotingInfoUrl = _json["absenteeVotingInfoUrl"];
    }
    if (_json.containsKey("ballotInfoUrl")) {
      ballotInfoUrl = _json["ballotInfoUrl"];
    }
    if (_json.containsKey("correspondenceAddress")) {
      correspondenceAddress = new SimpleAddressType.fromJson(_json["correspondenceAddress"]);
    }
    if (_json.containsKey("electionInfoUrl")) {
      electionInfoUrl = _json["electionInfoUrl"];
    }
    if (_json.containsKey("electionOfficials")) {
      electionOfficials = _json["electionOfficials"].map((value) => new ElectionOfficial.fromJson(value)).toList();
    }
    if (_json.containsKey("electionRegistrationConfirmationUrl")) {
      electionRegistrationConfirmationUrl = _json["electionRegistrationConfirmationUrl"];
    }
    if (_json.containsKey("electionRegistrationUrl")) {
      electionRegistrationUrl = _json["electionRegistrationUrl"];
    }
    if (_json.containsKey("electionRulesUrl")) {
      electionRulesUrl = _json["electionRulesUrl"];
    }
    if (_json.containsKey("hoursOfOperation")) {
      hoursOfOperation = _json["hoursOfOperation"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("physicalAddress")) {
      physicalAddress = new SimpleAddressType.fromJson(_json["physicalAddress"]);
    }
    if (_json.containsKey("voter_services")) {
      voterServices = _json["voter_services"];
    }
    if (_json.containsKey("votingLocationFinderUrl")) {
      votingLocationFinderUrl = _json["votingLocationFinderUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (absenteeVotingInfoUrl != null) {
      _json["absenteeVotingInfoUrl"] = absenteeVotingInfoUrl;
    }
    if (ballotInfoUrl != null) {
      _json["ballotInfoUrl"] = ballotInfoUrl;
    }
    if (correspondenceAddress != null) {
      _json["correspondenceAddress"] = (correspondenceAddress).toJson();
    }
    if (electionInfoUrl != null) {
      _json["electionInfoUrl"] = electionInfoUrl;
    }
    if (electionOfficials != null) {
      _json["electionOfficials"] = electionOfficials.map((value) => (value).toJson()).toList();
    }
    if (electionRegistrationConfirmationUrl != null) {
      _json["electionRegistrationConfirmationUrl"] = electionRegistrationConfirmationUrl;
    }
    if (electionRegistrationUrl != null) {
      _json["electionRegistrationUrl"] = electionRegistrationUrl;
    }
    if (electionRulesUrl != null) {
      _json["electionRulesUrl"] = electionRulesUrl;
    }
    if (hoursOfOperation != null) {
      _json["hoursOfOperation"] = hoursOfOperation;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (physicalAddress != null) {
      _json["physicalAddress"] = (physicalAddress).toJson();
    }
    if (voterServices != null) {
      _json["voter_services"] = voterServices;
    }
    if (votingLocationFinderUrl != null) {
      _json["votingLocationFinderUrl"] = votingLocationFinderUrl;
    }
    return _json;
  }
}


/** Information about a candidate running for elected office. */
class Candidate {
  /** The URL for the candidate's campaign web site. */
  core.String candidateUrl;

  /** A list of known (social) media channels for this candidate. */
  core.List<Channel> channels;

  /** The email address for the candidate's campaign. */
  core.String email;

  /** The candidate's name. */
  core.String name;

  /** The order the candidate appears on the ballot for this contest. */
  core.String orderOnBallot;

  /** The full name of the party the candidate is a member of. */
  core.String party;

  /** The voice phone number for the candidate's campaign office. */
  core.String phone;

  /** A URL for a photo of the candidate. */
  core.String photoUrl;


  Candidate();

  Candidate.fromJson(core.Map _json) {
    if (_json.containsKey("candidateUrl")) {
      candidateUrl = _json["candidateUrl"];
    }
    if (_json.containsKey("channels")) {
      channels = _json["channels"].map((value) => new Channel.fromJson(value)).toList();
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("orderOnBallot")) {
      orderOnBallot = _json["orderOnBallot"];
    }
    if (_json.containsKey("party")) {
      party = _json["party"];
    }
    if (_json.containsKey("phone")) {
      phone = _json["phone"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (candidateUrl != null) {
      _json["candidateUrl"] = candidateUrl;
    }
    if (channels != null) {
      _json["channels"] = channels.map((value) => (value).toJson()).toList();
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (orderOnBallot != null) {
      _json["orderOnBallot"] = orderOnBallot;
    }
    if (party != null) {
      _json["party"] = party;
    }
    if (phone != null) {
      _json["phone"] = phone;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    return _json;
  }
}


/** A social media or web channel for a candidate. */
class Channel {
  /** The unique public identifier for the candidate's channel. */
  core.String id;

  /**
   * The type of channel. The following is a list of types of channels, but is
   * not exhaustive. More channel types may be added at a later time. One of:
   * GooglePlus, YouTube, Facebook, Twitter
   */
  core.String type;


  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Information about a contest that appears on a voter's ballot. */
class Contest {
  /**
   * A number specifying the position of this contest on the voter's ballot.
   */
  core.String ballotPlacement;

  /** The candidate choices for this contest. */
  core.List<Candidate> candidates;

  /** Information about the electoral district that this contest is in. */
  ElectoralDistrict district;

  /**
   * A description of any additional eligibility requirements for voting in this
   * contest.
   */
  core.String electorateSpecifications;

  /**
   * An ID for this object. IDs may change in future requests and should not be
   * cached. Access to this field requires special access that can be requested
   * from the Request more link on the Quotas page.
   */
  core.String id;

  /**
   * The level of office for this contest. One of: federal, state, county, city,
   * other
   */
  core.String level;

  /**
   * The number of candidates that will be elected to office in this contest.
   */
  core.String numberElected;

  /** The number of candidates that a voter may vote for in this contest. */
  core.String numberVotingFor;

  /** The name of the office for this contest. */
  core.String office;

  /** If this is a partisan election, the name of the party it is for. */
  core.String primaryParty;

  /**
   * A brief description of the referendum. This field is only populated for
   * contests of type 'Referendum'.
   */
  core.String referendumSubtitle;

  /**
   * The title of the referendum (e.g. 'Proposition 42'). This field is only
   * populated for contests of type 'Referendum'.
   */
  core.String referendumTitle;

  /**
   * A link to the referendum. This field is only populated for contests of type
   * 'Referendum'.
   */
  core.String referendumUrl;

  /**
   * A list of sources for this contest. If multiple sources are listed, the
   * data has been aggregated from those sources.
   */
  core.List<Source> sources;

  /**
   * "Yes" or "No" depending on whether this a contest being held outside the
   * normal election cycle.
   */
  core.String special;

  /**
   * The type of contest. Usually this will be 'General', 'Primary', or
   * 'Run-off' for contests with candidates. For referenda this will be
   * 'Referendum'.
   */
  core.String type;


  Contest();

  Contest.fromJson(core.Map _json) {
    if (_json.containsKey("ballotPlacement")) {
      ballotPlacement = _json["ballotPlacement"];
    }
    if (_json.containsKey("candidates")) {
      candidates = _json["candidates"].map((value) => new Candidate.fromJson(value)).toList();
    }
    if (_json.containsKey("district")) {
      district = new ElectoralDistrict.fromJson(_json["district"]);
    }
    if (_json.containsKey("electorateSpecifications")) {
      electorateSpecifications = _json["electorateSpecifications"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("level")) {
      level = _json["level"];
    }
    if (_json.containsKey("numberElected")) {
      numberElected = _json["numberElected"];
    }
    if (_json.containsKey("numberVotingFor")) {
      numberVotingFor = _json["numberVotingFor"];
    }
    if (_json.containsKey("office")) {
      office = _json["office"];
    }
    if (_json.containsKey("primaryParty")) {
      primaryParty = _json["primaryParty"];
    }
    if (_json.containsKey("referendumSubtitle")) {
      referendumSubtitle = _json["referendumSubtitle"];
    }
    if (_json.containsKey("referendumTitle")) {
      referendumTitle = _json["referendumTitle"];
    }
    if (_json.containsKey("referendumUrl")) {
      referendumUrl = _json["referendumUrl"];
    }
    if (_json.containsKey("sources")) {
      sources = _json["sources"].map((value) => new Source.fromJson(value)).toList();
    }
    if (_json.containsKey("special")) {
      special = _json["special"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ballotPlacement != null) {
      _json["ballotPlacement"] = ballotPlacement;
    }
    if (candidates != null) {
      _json["candidates"] = candidates.map((value) => (value).toJson()).toList();
    }
    if (district != null) {
      _json["district"] = (district).toJson();
    }
    if (electorateSpecifications != null) {
      _json["electorateSpecifications"] = electorateSpecifications;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (level != null) {
      _json["level"] = level;
    }
    if (numberElected != null) {
      _json["numberElected"] = numberElected;
    }
    if (numberVotingFor != null) {
      _json["numberVotingFor"] = numberVotingFor;
    }
    if (office != null) {
      _json["office"] = office;
    }
    if (primaryParty != null) {
      _json["primaryParty"] = primaryParty;
    }
    if (referendumSubtitle != null) {
      _json["referendumSubtitle"] = referendumSubtitle;
    }
    if (referendumTitle != null) {
      _json["referendumTitle"] = referendumTitle;
    }
    if (referendumUrl != null) {
      _json["referendumUrl"] = referendumUrl;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    if (special != null) {
      _json["special"] = special;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** The result of a division search query. */
class DivisionSearchResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "civicinfo#divisionSearchResponse".
   */
  core.String kind;

  /** Not documented yet. */
  core.List<DivisionSearchResult> results;

  /**
   * The result of the request. One of: success, addressUnparseable,
   * noAddressParameter, internalLookupFailure
   */
  core.String status;


  DivisionSearchResponse();

  DivisionSearchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("results")) {
      results = _json["results"].map((value) => new DivisionSearchResult.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/**
 * Represents a political geographic division that matches the requested query.
 */
class DivisionSearchResult {
  /**
   * Other Open Civic Data identifiers that refer to the same division -- for
   * example, those that refer to other political divisions whose boundaries are
   * defined to be coterminous with this one. For example,
   * ocd-division/country:us/state:wy will include an alias of
   * ocd-division/country:us/state:wy/cd:1, since Wyoming has only one
   * Congressional district.
   */
  core.List<core.String> aliases;

  /** The name of the division. */
  core.String name;

  /** The unique Open Civic Data identifier for this division. */
  core.String ocdId;


  DivisionSearchResult();

  DivisionSearchResult.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = _json["aliases"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ocdId")) {
      ocdId = _json["ocdId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aliases != null) {
      _json["aliases"] = aliases;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (ocdId != null) {
      _json["ocdId"] = ocdId;
    }
    return _json;
  }
}


/** Information about the election that was queried. */
class Election {
  /** Day of the election in YYYY-MM-DD format. */
  core.String electionDay;

  /** The unique ID of this election. */
  core.String id;

  /** A displayable name for the election. */
  core.String name;


  Election();

  Election.fromJson(core.Map _json) {
    if (_json.containsKey("electionDay")) {
      electionDay = _json["electionDay"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (electionDay != null) {
      _json["electionDay"] = electionDay;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Information about individual election officials. */
class ElectionOfficial {
  /** The email address of the election official. */
  core.String emailAddress;

  /** The fax number of the election official. */
  core.String faxNumber;

  /** The full name of the election official. */
  core.String name;

  /** The office phone number of the election official. */
  core.String officePhoneNumber;

  /** The title of the election official. */
  core.String title;


  ElectionOfficial();

  ElectionOfficial.fromJson(core.Map _json) {
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("faxNumber")) {
      faxNumber = _json["faxNumber"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("officePhoneNumber")) {
      officePhoneNumber = _json["officePhoneNumber"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (faxNumber != null) {
      _json["faxNumber"] = faxNumber;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (officePhoneNumber != null) {
      _json["officePhoneNumber"] = officePhoneNumber;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** The list of elections available for this version of the API. */
class ElectionsQueryResponse {
  /** A list of available elections */
  core.List<Election> elections;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "civicinfo#electionsQueryResponse".
   */
  core.String kind;


  ElectionsQueryResponse();

  ElectionsQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("elections")) {
      elections = _json["elections"].map((value) => new Election.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (elections != null) {
      _json["elections"] = elections.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Describes the geographic scope of a contest. */
class ElectoralDistrict {
  /**
   * An identifier for this district, relative to its scope. For example, the
   * 34th State Senate district would have id "34" and a scope of stateUpper.
   */
  core.String id;

  /** The name of the district. */
  core.String name;

  /**
   * The geographic scope of this district. If unspecified the district's
   * geography is not known. One of: national, statewide, congressional,
   * stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide,
   * township, countyCouncil, cityCouncil, ward, special
   */
  core.String scope;


  ElectoralDistrict();

  ElectoralDistrict.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("scope")) {
      scope = _json["scope"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    return _json;
  }
}


/** Describes a political geography. */
class GeographicDivision {
  /**
   * Any other valid OCD IDs that refer to the same division.
   *
   * Because OCD IDs are meant to be human-readable and at least somewhat
   * predictable, there are occasionally several identifiers for a single
   * division. These identifiers are defined to be equivalent to one another,
   * and one is always indicated as the primary identifier. The primary
   * identifier will be returned in ocd_id above, and any other equivalent valid
   * identifiers will be returned in this list.
   *
   * For example, if this division's OCD ID is
   * ocd-division/country:us/district:dc, this will contain
   * ocd-division/country:us/state:dc.
   */
  core.List<core.String> alsoKnownAs;

  /** The name of the division. */
  core.String name;

  /**
   * List of keys in the offices object, one for each office elected from this
   * division. Will only be present if includeOffices was true (or absent) in
   * the request.
   */
  core.List<core.String> officeIds;

  /**
   * The geographic scope of the division. If unspecified, the division's
   * geography is not known. One of: national, statewide, congressional,
   * stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide,
   * township, countyCouncil, cityCouncil, ward, special
   */
  core.String scope;


  GeographicDivision();

  GeographicDivision.fromJson(core.Map _json) {
    if (_json.containsKey("alsoKnownAs")) {
      alsoKnownAs = _json["alsoKnownAs"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("officeIds")) {
      officeIds = _json["officeIds"];
    }
    if (_json.containsKey("scope")) {
      scope = _json["scope"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alsoKnownAs != null) {
      _json["alsoKnownAs"] = alsoKnownAs;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (officeIds != null) {
      _json["officeIds"] = officeIds;
    }
    if (scope != null) {
      _json["scope"] = scope;
    }
    return _json;
  }
}


/** Information about an Office held by one or more Officials. */
class Office {
  /** The OCD ID of the division with which this office is associated. */
  core.String divisionId;

  /**
   * The level of this elected office. One of: federal, state, county, city,
   * other
   */
  core.String level;

  /** The human-readable name of the office. */
  core.String name;

  /**
   * List of keys in the officials object of people who presently hold this
   * office.
   */
  core.List<core.String> officialIds;

  /**
   * A list of sources for this office. If multiple sources are listed, the data
   * has been aggregated from those sources.
   */
  core.List<Source> sources;


  Office();

  Office.fromJson(core.Map _json) {
    if (_json.containsKey("divisionId")) {
      divisionId = _json["divisionId"];
    }
    if (_json.containsKey("level")) {
      level = _json["level"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("officialIds")) {
      officialIds = _json["officialIds"];
    }
    if (_json.containsKey("sources")) {
      sources = _json["sources"].map((value) => new Source.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (divisionId != null) {
      _json["divisionId"] = divisionId;
    }
    if (level != null) {
      _json["level"] = level;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (officialIds != null) {
      _json["officialIds"] = officialIds;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Information about a person holding an elected office. */
class Official {
  /** Addresses at which to contact the official. */
  core.List<SimpleAddressType> address;

  /** A list of known (social) media channels for this official. */
  core.List<Channel> channels;

  /** The direct email addresses for the official. */
  core.List<core.String> emails;

  /** The official's name. */
  core.String name;

  /** The full name of the party the official belongs to. */
  core.String party;

  /** The official's public contact phone numbers. */
  core.List<core.String> phones;

  /** A URL for a photo of the official. */
  core.String photoUrl;

  /** The official's public website URLs. */
  core.List<core.String> urls;


  Official();

  Official.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"].map((value) => new SimpleAddressType.fromJson(value)).toList();
    }
    if (_json.containsKey("channels")) {
      channels = _json["channels"].map((value) => new Channel.fromJson(value)).toList();
    }
    if (_json.containsKey("emails")) {
      emails = _json["emails"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("party")) {
      party = _json["party"];
    }
    if (_json.containsKey("phones")) {
      phones = _json["phones"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("urls")) {
      urls = _json["urls"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = address.map((value) => (value).toJson()).toList();
    }
    if (channels != null) {
      _json["channels"] = channels.map((value) => (value).toJson()).toList();
    }
    if (emails != null) {
      _json["emails"] = emails;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (party != null) {
      _json["party"] = party;
    }
    if (phones != null) {
      _json["phones"] = phones;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (urls != null) {
      _json["urls"] = urls;
    }
    return _json;
  }
}


/**
 * A location where a voter can vote. This may be an early vote site or an
 * election day voting location.
 */
class PollingLocation {
  /** The address of the location */
  SimpleAddressType address;

  /**
   * The last date that this early vote site may be used. This field is not
   * populated for polling locations.
   */
  core.String endDate;

  /**
   * An ID for this object. IDs may change in future requests and should not be
   * cached. Access to this field requires special access that can be requested
   * from the Request more link on the Quotas page.
   */
  core.String id;

  /**
   * The name of the early vote site. This field is not populated for polling
   * locations.
   */
  core.String name;

  /** Notes about this location (e.g. accessibility ramp or entrance to use) */
  core.String notes;

  /** A description of when this location is open. */
  core.String pollingHours;

  /**
   * A list of sources for this location. If multiple sources are listed the
   * data has been aggregated from those sources.
   */
  core.List<Source> sources;

  /**
   * The first date that this early vote site may be used. This field is not
   * populated for polling locations.
   */
  core.String startDate;

  /**
   * The services provided by this early vote site. This field is not populated
   * for polling locations.
   */
  core.String voterServices;


  PollingLocation();

  PollingLocation.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = new SimpleAddressType.fromJson(_json["address"]);
    }
    if (_json.containsKey("endDate")) {
      endDate = _json["endDate"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("pollingHours")) {
      pollingHours = _json["pollingHours"];
    }
    if (_json.containsKey("sources")) {
      sources = _json["sources"].map((value) => new Source.fromJson(value)).toList();
    }
    if (_json.containsKey("startDate")) {
      startDate = _json["startDate"];
    }
    if (_json.containsKey("voterServices")) {
      voterServices = _json["voterServices"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = (address).toJson();
    }
    if (endDate != null) {
      _json["endDate"] = endDate;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (pollingHours != null) {
      _json["pollingHours"] = pollingHours;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    if (startDate != null) {
      _json["startDate"] = startDate;
    }
    if (voterServices != null) {
      _json["voterServices"] = voterServices;
    }
    return _json;
  }
}


/**
 * A request for political geography and representative information for an
 * address.
 */
class RepresentativeInfoRequest {
  /**
   * The address to look up. May only be specified if the field ocdId is not
   * given in the URL.
   */
  core.String address;


  RepresentativeInfoRequest();

  RepresentativeInfoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = address;
    }
    return _json;
  }
}


/** The result of a representative info lookup query. */
class RepresentativeInfoResponse {
  /** Political geographic divisions that contain the requested address. */
  core.Map<core.String, GeographicDivision> divisions;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "civicinfo#representativeInfoResponse".
   */
  core.String kind;

  /** The normalized version of the requested address */
  SimpleAddressType normalizedInput;

  /**
   * Elected offices referenced by the divisions listed above. Will only be
   * present if includeOffices was true in the request.
   */
  core.Map<core.String, Office> offices;

  /**
   * Officials holding the offices listed above. Will only be present if
   * includeOffices was true in the request.
   */
  core.Map<core.String, Official> officials;

  /**
   * The result of the request. One of: success, noStreetSegmentFound,
   * addressUnparseable, noAddressParameter, multipleStreetSegmentsFound,
   * electionOver, electionUnknown, internalLookupFailure,
   * RequestedBothAddressAndOcdId
   */
  core.String status;


  RepresentativeInfoResponse();

  RepresentativeInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("divisions")) {
      divisions = common_internal.mapMap(_json["divisions"], (item) => new GeographicDivision.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("normalizedInput")) {
      normalizedInput = new SimpleAddressType.fromJson(_json["normalizedInput"]);
    }
    if (_json.containsKey("offices")) {
      offices = common_internal.mapMap(_json["offices"], (item) => new Office.fromJson(item));
    }
    if (_json.containsKey("officials")) {
      officials = common_internal.mapMap(_json["officials"], (item) => new Official.fromJson(item));
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (divisions != null) {
      _json["divisions"] = common_internal.mapMap(divisions, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (normalizedInput != null) {
      _json["normalizedInput"] = (normalizedInput).toJson();
    }
    if (offices != null) {
      _json["offices"] = common_internal.mapMap(offices, (item) => (item).toJson());
    }
    if (officials != null) {
      _json["officials"] = common_internal.mapMap(officials, (item) => (item).toJson());
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** A simple representation of an address. */
class SimpleAddressType {
  /** The city or town for the address. */
  core.String city;

  /** The street name and number of this address. */
  core.String line1;

  /** The second line the address, if needed. */
  core.String line2;

  /** The third line of the address, if needed. */
  core.String line3;

  /** The name of the location. */
  core.String locationName;

  /** The US two letter state abbreviation of the address. */
  core.String state;

  /** The US Postal Zip Code of the address. */
  core.String zip;


  SimpleAddressType();

  SimpleAddressType.fromJson(core.Map _json) {
    if (_json.containsKey("city")) {
      city = _json["city"];
    }
    if (_json.containsKey("line1")) {
      line1 = _json["line1"];
    }
    if (_json.containsKey("line2")) {
      line2 = _json["line2"];
    }
    if (_json.containsKey("line3")) {
      line3 = _json["line3"];
    }
    if (_json.containsKey("locationName")) {
      locationName = _json["locationName"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("zip")) {
      zip = _json["zip"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (city != null) {
      _json["city"] = city;
    }
    if (line1 != null) {
      _json["line1"] = line1;
    }
    if (line2 != null) {
      _json["line2"] = line2;
    }
    if (line3 != null) {
      _json["line3"] = line3;
    }
    if (locationName != null) {
      _json["locationName"] = locationName;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (zip != null) {
      _json["zip"] = zip;
    }
    return _json;
  }
}


/**
 * Contains information about the data source for the element containing it.
 */
class Source {
  /** The name of the data source. */
  core.String name;

  /** Whether this data comes from an official government source. */
  core.bool official;


  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("official")) {
      official = _json["official"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (official != null) {
      _json["official"] = official;
    }
    return _json;
  }
}


/** A request for information about a voter. */
class VoterInfoRequest {
  /** The registered address of the voter to look up. */
  core.String address;


  VoterInfoRequest();

  VoterInfoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = address;
    }
    return _json;
  }
}


/** The result of a voter info lookup query. */
class VoterInfoResponse {
  /** Contests that will appear on the voter's ballot */
  core.List<Contest> contests;

  /**
   * Locations where the voter is eligible to vote early, prior to election day
   */
  core.List<PollingLocation> earlyVoteSites;

  /** The election that was queried. */
  Election election;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "civicinfo#voterInfoResponse".
   */
  core.String kind;

  /** The normalized version of the requested address */
  SimpleAddressType normalizedInput;

  /**
   * Locations where the voter is eligible to vote on election day. For states
   * with mail-in voting only, these locations will be nearby drop box
   * locations. Drop box locations are free to the voter and may be used instead
   * of placing the ballot in the mail.
   */
  core.List<PollingLocation> pollingLocations;

  /** Not documented yet. */
  core.String precinctId;

  /**
   * Local Election Information for the state that the voter votes in. For the
   * US, there will only be one element in this array.
   */
  core.List<AdministrationRegion> state;

  /**
   * The result of the request. One of: success, noStreetSegmentFound,
   * addressUnparseable, noAddressParameter, multipleStreetSegmentsFound,
   * electionOver, electionUnknown, internalLookupFailure
   */
  core.String status;


  VoterInfoResponse();

  VoterInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("contests")) {
      contests = _json["contests"].map((value) => new Contest.fromJson(value)).toList();
    }
    if (_json.containsKey("earlyVoteSites")) {
      earlyVoteSites = _json["earlyVoteSites"].map((value) => new PollingLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("election")) {
      election = new Election.fromJson(_json["election"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("normalizedInput")) {
      normalizedInput = new SimpleAddressType.fromJson(_json["normalizedInput"]);
    }
    if (_json.containsKey("pollingLocations")) {
      pollingLocations = _json["pollingLocations"].map((value) => new PollingLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("precinctId")) {
      precinctId = _json["precinctId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"].map((value) => new AdministrationRegion.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contests != null) {
      _json["contests"] = contests.map((value) => (value).toJson()).toList();
    }
    if (earlyVoteSites != null) {
      _json["earlyVoteSites"] = earlyVoteSites.map((value) => (value).toJson()).toList();
    }
    if (election != null) {
      _json["election"] = (election).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (normalizedInput != null) {
      _json["normalizedInput"] = (normalizedInput).toJson();
    }
    if (pollingLocations != null) {
      _json["pollingLocations"] = pollingLocations.map((value) => (value).toJson()).toList();
    }
    if (precinctId != null) {
      _json["precinctId"] = precinctId;
    }
    if (state != null) {
      _json["state"] = state.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


