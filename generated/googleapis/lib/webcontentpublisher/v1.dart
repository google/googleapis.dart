// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Web Content Publisher API - v1
///
/// webcontentpublisher.googleapis.com API, a service for web content
/// publishers.
///
/// For more information, see <https://developers.google.com/news/subscribe>
///
/// Create an instance of [WebContentPublisherApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsPublicationsResource]
///     - [OrganizationsPublicationsCtasResource]
/// - [PublicationsResource]
/// - [UsersResource]
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

/// webcontentpublisher.googleapis.com API, a service for web content
/// publishers.
class WebContentPublisherApi {
  /// Private Service:
  /// https://www.googleapis.com/auth/webcontentpublisher.publications.entitlements.readonly.system
  static const webcontentpublisherPublicationsEntitlementsReadonlySystemScope =
      'https://www.googleapis.com/auth/webcontentpublisher.publications.entitlements.readonly.system';

  /// Private Service:
  /// https://www.googleapis.com/auth/webcontentpublisher.publications.manage.system
  static const webcontentpublisherPublicationsManageSystemScope =
      'https://www.googleapis.com/auth/webcontentpublisher.publications.manage.system';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  PublicationsResource get publications => PublicationsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  WebContentPublisherApi(
    http.Client client, {
    core.String rootUrl = 'https://webcontentpublisher.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsPublicationsResource get publications =>
      OrganizationsPublicationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsPublicationsResource {
  final commons.ApiRequester _requester;

  OrganizationsPublicationsCtasResource get ctas =>
      OrganizationsPublicationsCtasResource(_requester);

  OrganizationsPublicationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a publication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this publication will be
  /// created. Format: `organizations/{organization}`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [publicationId] - Optional. The unique identifier of the publication to
  /// create. If not specified, the server will generate a random publication
  /// ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Publication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Publication> create(
    Publication request,
    core.String parent, {
    core.String? publicationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'publicationId': ?publicationId == null ? null : [publicationId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/publications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Publication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a publication.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the publication to retrieve.
  /// Format: `organizations/{organization}/publications/{publication}`.
  /// Value must have pattern `^organizations/\[^/\]+/publications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Publication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Publication> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Publication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves the catalog of predefined survey questions and answer choices
  /// available for a publication.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the survey question catalog to
  /// retrieve. Format:
  /// `organizations/{organization}/publications/{publication}/surveyQuestionCatalog`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/publications/\[^/\]+/surveyQuestionCatalog$`.
  ///
  /// [languageCode] - Optional. The BCP-47 language code (e.g., "en-US",
  /// "es-419") to override the publication's configured primary language.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SurveyQuestionCatalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SurveyQuestionCatalog> getSurveyQuestionCatalog(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'languageCode': ?languageCode == null ? null : [languageCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SurveyQuestionCatalog.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists publications.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization whose publications to list,
  /// or "organizations/-" for all organizations a user has access to. Format:
  /// `organizations/{organization}`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression to filter the publications
  /// returned.
  ///
  /// [pageSize] - Optional. The maximum number of publications to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// publications will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPublications` call, to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublicationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/publications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPublicationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a publication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the publication. Format:
  /// organizations/{organization}/publications/{publication}
  /// Value must have pattern `^organizations/\[^/\]+/publications/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Publication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Publication> patch(
    Publication request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Publication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsPublicationsCtasResource {
  final commons.ApiRequester _requester;

  OrganizationsPublicationsCtasResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a CTA.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent publication resource where this CTA will
  /// be created. Format:
  /// `organizations/{organization}/publications/{publication}`.
  /// Value must have pattern `^organizations/\[^/\]+/publications/\[^/\]+$`.
  ///
  /// [ctaId] - Optional. The unique identifier of the CTA to create. If not
  /// specified, the server will generate a random CTA ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cta].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cta> create(
    Cta request,
    core.String parent, {
    core.String? ctaId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'ctaId': ?ctaId == null ? null : [ctaId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ctas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Cta.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a CTA.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CTA to retrieve. Format:
  /// `organizations/{organization}/publications/{publication}/ctas/{cta}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/publications/\[^/\]+/ctas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cta].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cta> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cta.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CTAs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent publication resource whose CTAs to list.
  /// Format: `organizations/{organization}/publications/{publication}`.
  /// Value must have pattern `^organizations/\[^/\]+/publications/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of CTAs to return. The service
  /// may return fewer than this value. If unspecified, at most 50 CTAs will be
  /// returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListCtas`
  /// call, to retrieve the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCtasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCtasResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ctas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCtasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a CTA.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the Cta. Format:
  /// organizations/{organization}/publications/{publication}/ctas/{cta}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/publications/\[^/\]+/ctas/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cta].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cta> patch(
    Cta request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Cta.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PublicationsResource {
  final commons.ApiRequester _requester;

  PublicationsResource(commons.ApiRequester client) : _requester = client;

  /// Checks if a user is eligible for free article access.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the publication. Format:
  /// publications/{publication}
  /// Value must have pattern `^publications/\[^/\]+$`.
  ///
  /// [httpReferrer] - Required. The HTTP referrer.
  ///
  /// [uri] - Required. The URI of the content.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckFreeAccessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckFreeAccessResponse> checkFreeAccess(
    core.String name, {
    core.String? httpReferrer,
    core.String? uri,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'httpReferrer': ?httpReferrer == null ? null : [httpReferrer],
      'uri': ?uri == null ? null : [uri],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':checkFreeAccess';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckFreeAccessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Checks if a reader has active program access.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the publication. Format:
  /// publications/{publication}
  /// Value must have pattern `^publications/\[^/\]+$`.
  ///
  /// [productId] - Required. The specific product ID being accessed.
  ///
  /// [swgUserToken] - Required. The encrypted site token string received from
  /// the Chrome HTTP header.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckProgramAccessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckProgramAccessResponse> checkProgramAccess(
    core.String name, {
    core.String? productId,
    core.String? swgUserToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'productId': ?productId == null ? null : [productId],
      'swgUserToken': ?swgUserToken == null ? null : [swgUserToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':checkProgramAccess';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckProgramAccessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Returns user tokens mapped to their canonical domains for all publications
  /// the authenticated user is entitled to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the user to generate tokens for.
  /// Format: users/{user}
  /// Value must have pattern `^users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GeneratePlatformSiteTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GeneratePlatformSiteTokensResponse> generatePlatformSiteTokens(
    GeneratePlatformSiteTokensRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':generatePlatformSiteTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GeneratePlatformSiteTokensResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A predefined answer choice template for a catalog question.
class AnswerChoiceTemplate {
  /// Category of the answer based on the IAB Audience Taxonomy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ANSWER_CATEGORY_UNSPECIFIED" : Unspecified answer category.
  /// - "INTEREST__ACADEMIC_INTERESTS" : Interest | Academic Interests.
  /// - "INTEREST__AUTOMOTIVE" : Interest | Automotive.
  /// - "INTEREST__BOOKS_AND_LITERATURE" : Interest | Books and Literature.
  /// - "INTEREST__BUSINESS_AND_FINANCE" : Interest | Business and Finance.
  /// - "INTEREST__CAREERS" : Interest | Careers.
  /// - "INTEREST__FAMILY_AND_RELATIONSHIPS" : Interest | Family and
  /// Relationships.
  /// - "INTEREST__FINE_ART" : Interest | Fine Art.
  /// - "INTEREST__FOOD_AND_DRINK" : Interest | Food & Drink.
  /// - "INTEREST__HEALTH_AND_MEDICAL_SERVICES" : Interest | Health and Medical
  /// Services.
  /// - "INTEREST__HEALTHY_LIVING" : Interest | Healthy Living.
  /// - "INTEREST__HOBBIES_AND_INTERESTS" : Interest | Hobbies & Interests.
  /// - "INTEREST__HOME_AND_GARDEN" : Interest | Home & Garden.
  /// - "INTEREST__MEDICAL_HEALTH" : Interest | Medical Health.
  /// - "INTEREST__MOVIES" : Interest | Movies.
  /// - "INTEREST__MUSIC_AND_AUDIO" : Interest | Music and Audio.
  /// - "INTEREST__NEWS_AND_POLITICS" : Interest | News and Politics.
  /// - "INTEREST__PERSONAL_FINANCE" : Interest | Personal Finance.
  /// - "INTEREST__PETS" : Interest | Pets.
  /// - "INTEREST__PHARMACEUTICALS_CONDITIONS_AND_SYMPTOMS" : Interest |
  /// Pharmaceuticals, Conditions, and Symptoms.
  /// - "INTEREST__POP_CULTURE" : Interest | Pop Culture.
  /// - "INTEREST__REAL_ESTATE" : Interest | Real Estate.
  /// - "INTEREST__SHOPPING" : Interest | Shopping.
  /// - "INTEREST__SPORTS" : Interest | Sports.
  /// - "INTEREST__STYLE_AND_FASHION" : Interest | Style & Fashion.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING" : Interest | Technology &
  /// Computing.
  /// - "INTEREST__TELEVISION" : Interest | Television.
  /// - "INTEREST__TRAVEL" : Interest | Travel.
  /// - "INTEREST__VIDEO_GAMING" : Interest | Video Gaming.
  /// - "INTEREST__ACADEMIC_INTERESTS__ARTS_AND_HUMANITIES" : Interest |
  /// Academic Interests | Arts and Humanities.
  /// - "INTEREST__ACADEMIC_INTERESTS__LANGUAGE_LEARNING" : Interest | Academic
  /// Interests | Language Learning.
  /// - "INTEREST__ACADEMIC_INTERESTS__LIFE_SCIENCES" : Interest | Academic
  /// Interests | Life Sciences.
  /// - "INTEREST__ACADEMIC_INTERESTS__PHYSICAL_SCIENCE_AND_ENGINEERING" :
  /// Interest | Academic Interests | Physical Science and Engineering.
  /// - "INTEREST__ACADEMIC_INTERESTS__SOCIAL_SCIENCES" : Interest | Academic
  /// Interests | Social Sciences.
  /// - "INTEREST__AUTOMOTIVE__AUTO_BUYING_AND_SELLING" : Interest | Automotive
  /// | Auto Buying and Selling.
  /// - "INTEREST__AUTOMOTIVE__AUTO_SHOWS" : Interest | Automotive | Auto Shows.
  /// - "INTEREST__AUTOMOTIVE__AUTO_TECHNOLOGY" : Interest | Automotive | Auto
  /// Technology.
  /// - "INTEREST__AUTOMOTIVE__BUDGET_CARS" : Interest | Automotive | Budget
  /// Cars.
  /// - "INTEREST__AUTOMOTIVE__CAR_CULTURE" : Interest | Automotive | Car
  /// Culture.
  /// - "INTEREST__AUTOMOTIVE__CLASSIC_CARS" : Interest | Automotive | Classic
  /// Cars.
  /// - "INTEREST__AUTOMOTIVE__CONCEPT_CARS" : Interest | Automotive | Concept
  /// Cars.
  /// - "INTEREST__AUTOMOTIVE__DASH_CAM_VIDEOS" : Interest | Automotive | Dash
  /// Cam Videos.
  /// - "INTEREST__AUTOMOTIVE__DRIVERLESS_CARS" : Interest | Automotive |
  /// Driverless Cars.
  /// - "INTEREST__AUTOMOTIVE__GREEN_VEHICLES" : Interest | Automotive | Green
  /// Vehicles.
  /// - "INTEREST__AUTOMOTIVE__LUXURY_CARS" : Interest | Automotive | Luxury
  /// Cars.
  /// - "INTEREST__AUTOMOTIVE__MOTORCYCLES" : Interest | Automotive |
  /// Motorcycles.
  /// - "INTEREST__AUTOMOTIVE__PERFORMANCE_CARS" : Interest | Automotive |
  /// Performance Cars.
  /// - "INTEREST__AUTOMOTIVE__SCOOTERS" : Interest | Automotive | Scooters.
  /// - "INTEREST__BOOKS_AND_LITERATURE__ART_AND_PHOTOGRAPHY_BOOKS" : Interest |
  /// Books and Literature | Art and Photography Books.
  /// - "INTEREST__BOOKS_AND_LITERATURE__BIOGRAPHIES" : Interest | Books and
  /// Literature | Biographies.
  /// - "INTEREST__BOOKS_AND_LITERATURE__CHILDRENS_LITERATURE" : Interest |
  /// Books and Literature | Children's Literature.
  /// - "INTEREST__BOOKS_AND_LITERATURE__COMICS_AND_GRAPHIC_NOVELS" : Interest |
  /// Books and Literature | Comics and Graphic Novels.
  /// - "INTEREST__BOOKS_AND_LITERATURE__COOKBOOKS" : Interest | Books and
  /// Literature | Cookbooks.
  /// - "INTEREST__BOOKS_AND_LITERATURE__FICTION" : Interest | Books and
  /// Literature | Fiction.
  /// - "INTEREST__BOOKS_AND_LITERATURE__POETRY" : Interest | Books and
  /// Literature | Poetry.
  /// - "INTEREST__BOOKS_AND_LITERATURE__TRAVEL_BOOKS" : Interest | Books and
  /// Literature | Travel Books.
  /// - "INTEREST__BOOKS_AND_LITERATURE__YOUNG_ADULT_LITERATURE" : Interest |
  /// Books and Literature | Young Adult Literature.
  /// - "INTEREST__BUSINESS_AND_FINANCE__BUSINESS" : Interest | Business and
  /// Finance | Business.
  /// - "INTEREST__BUSINESS_AND_FINANCE__ECONOMY" : Interest | Business and
  /// Finance | Economy.
  /// - "INTEREST__BUSINESS_AND_FINANCE__INDUSTRIES" : Interest | Business and
  /// Finance | Industries.
  /// - "INTEREST__CAREERS__APPRENTICESHIPS" : Interest | Careers |
  /// Apprenticeships.
  /// - "INTEREST__CAREERS__CAREER_ADVICE" : Interest | Careers | Career Advice.
  /// - "INTEREST__CAREERS__CAREER_PLANNING" : Interest | Careers | Career
  /// Planning.
  /// - "INTEREST__CAREERS__REMOTE_WORKING" : Interest | Careers | Remote
  /// Working.
  /// - "INTEREST__CAREERS__VOCATIONAL_TRAINING" : Interest | Careers |
  /// Vocational Training.
  /// - "INTEREST__EDUCATION__ADULT_EDUCATION" : Interest | Education | Adult
  /// Education.
  /// - "INTEREST__EDUCATION__ONLINE_EDUCATION" : Interest | Education | Online
  /// Education.
  /// - "INTEREST__FAMILY_AND_RELATIONSHIPS__PARENTING" : Interest | Family and
  /// Relationships | Parenting.
  /// - "INTEREST__FINE_ART__COSTUME" : Interest | Fine Art | Costume.
  /// - "INTEREST__FINE_ART__DANCE" : Interest | Fine Art | Dance.
  /// - "INTEREST__FINE_ART__DESIGN" : Interest | Fine Art | Design.
  /// - "INTEREST__FINE_ART__DIGITAL_ARTS" : Interest | Fine Art | Digital Arts.
  /// - "INTEREST__FINE_ART__FINE_ART_PHOTOGRAPHY" : Interest | Fine Art | Fine
  /// Art Photography.
  /// - "INTEREST__FINE_ART__MODERN_ART" : Interest | Fine Art | Modern Art.
  /// - "INTEREST__FINE_ART__OPERA" : Interest | Fine Art | Opera.
  /// - "INTEREST__FINE_ART__THEATER" : Interest | Fine Art | Theater.
  /// - "INTEREST__FOOD_AND_DRINK__ALCOHOLIC_BEVERAGES" : Interest | Food &
  /// Drink | Alcoholic Beverages.
  /// - "INTEREST__FOOD_AND_DRINK__BARBECUES_AND_GRILLING" : Interest | Food &
  /// Drink | Barbecues and Grilling.
  /// - "INTEREST__FOOD_AND_DRINK__COOKING" : Interest | Food & Drink | Cooking.
  /// - "INTEREST__FOOD_AND_DRINK__DESSERTS_AND_BAKING" : Interest | Food &
  /// Drink | Desserts and Baking.
  /// - "INTEREST__FOOD_AND_DRINK__DINING_OUT" : Interest | Food & Drink |
  /// Dining Out.
  /// - "INTEREST__FOOD_AND_DRINK__FOOD_ALLERGIES" : Interest | Food & Drink |
  /// Food Allergies.
  /// - "INTEREST__FOOD_AND_DRINK__FOOD_MOVEMENTS" : Interest | Food & Drink |
  /// Food Movements.
  /// - "INTEREST__FOOD_AND_DRINK__HEALTHY_COOKING_AND_EATING" : Interest | Food
  /// & Drink | Healthy Cooking and Eating.
  /// - "INTEREST__FOOD_AND_DRINK__NON_ALCOHOLIC_BEVERAGES" : Interest | Food &
  /// Drink | Non-Alcoholic Beverages.
  /// - "INTEREST__FOOD_AND_DRINK__VEGAN_DIETS" : Interest | Food & Drink |
  /// Vegan Diets.
  /// - "INTEREST__FOOD_AND_DRINK__VEGETARIAN_DIETS" : Interest | Food & Drink |
  /// Vegetarian Diets.
  /// - "INTEREST__FOOD_AND_DRINK__WORLD_CUISINES" : Interest | Food & Drink |
  /// World Cuisines.
  /// - "INTEREST__HEALTH_AND_MEDICAL_SERVICES__HEALTH_AND_PHARMA" : Interest |
  /// Health and Medical Services | Health & Pharma.
  /// - "INTEREST__HEALTHY_LIVING__CHILDRENS_HEALTH" : Interest | Healthy Living
  /// | Children's Health.
  /// - "INTEREST__HEALTHY_LIVING__FITNESS_AND_EXERCISE" : Interest | Healthy
  /// Living | Fitness and Exercise.
  /// - "INTEREST__HEALTHY_LIVING__MENS_HEALTH" : Interest | Healthy Living |
  /// Men's Health.
  /// - "INTEREST__HEALTHY_LIVING__NUTRITION" : Interest | Healthy Living |
  /// Nutrition.
  /// - "INTEREST__HEALTHY_LIVING__SENIOR_HEALTH" : Interest | Healthy Living |
  /// Senior Health.
  /// - "INTEREST__HEALTHY_LIVING__WEIGHT_LOSS" : Interest | Healthy Living |
  /// Weight Loss.
  /// - "INTEREST__HEALTHY_LIVING__WELLNESS" : Interest | Healthy Living |
  /// Wellness.
  /// - "INTEREST__HEALTHY_LIVING__WOMENS_HEALTH" : Interest | Healthy Living |
  /// Women's Health.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__ANTIQUING_AND_ANTIQUES" : Interest |
  /// Hobbies & Interests | Antiquing and Antiques.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__ARTS_AND_CRAFTS" : Interest | Hobbies
  /// & Interests | Arts and Crafts.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__BEEKEEPING" : Interest | Hobbies &
  /// Interests | Beekeeping.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__BIRDWATCHING" : Interest | Hobbies &
  /// Interests | Birdwatching.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__CIGARS" : Interest | Hobbies &
  /// Interests | Cigars.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__COLLECTING" : Interest | Hobbies &
  /// Interests | Collecting.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__CONTENT_PRODUCTION" : Interest |
  /// Hobbies & Interests | Content Production.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__GAMES_AND_PUZZLES" : Interest |
  /// Hobbies & Interests | Games and Puzzles.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__GENEALOGY_AND_ANCESTRY" : Interest |
  /// Hobbies & Interests | Genealogy and Ancestry.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__MAGIC_AND_ILLUSION" : Interest |
  /// Hobbies & Interests | Magic and Illusion.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__MODEL_TOYS" : Interest | Hobbies &
  /// Interests | Model Toys.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__MUSICAL_INSTRUMENTS" : Interest |
  /// Hobbies & Interests | Musical Instruments.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__PARANORMAL_PHENOMENA" : Interest |
  /// Hobbies & Interests | Paranormal Phenomena.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__RADIO_CONTROL" : Interest | Hobbies &
  /// Interests | Radio Control.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__SCI_FI_AND_FANTASY" : Interest |
  /// Hobbies & Interests | Sci-fi and Fantasy.
  /// - "INTEREST__HOBBIES_AND_INTERESTS__WORKSHOPS_AND_CLASSES" : Interest |
  /// Hobbies & Interests | Workshops and Classes.
  /// - "INTEREST__HOME_AND_GARDEN__GARDENING" : Interest | Home & Garden |
  /// Gardening.
  /// - "INTEREST__HOME_AND_GARDEN__HOME_ENTERTAINING" : Interest | Home &
  /// Garden | Home Entertaining.
  /// - "INTEREST__HOME_AND_GARDEN__HOME_IMPROVEMENT" : Interest | Home & Garden
  /// | Home Improvement.
  /// - "INTEREST__HOME_AND_GARDEN__INTERIOR_DECORATING" : Interest | Home &
  /// Garden | Interior Decorating.
  /// - "INTEREST__HOME_AND_GARDEN__LANDSCAPING" : Interest | Home & Garden |
  /// Landscaping.
  /// - "INTEREST__HOME_AND_GARDEN__OUTDOOR_DECORATING" : Interest | Home &
  /// Garden | Outdoor Decorating.
  /// - "INTEREST__HOME_AND_GARDEN__REMODELING_AND_CONSTRUCTION" : Interest |
  /// Home & Garden | Remodeling & Construction.
  /// - "INTEREST__HOME_AND_GARDEN__SMART_HOME" : Interest | Home & Garden |
  /// Smart Home.
  /// - "INTEREST__MOVIES__ACTION_AND_ADVENTURE_MOVIES" : Interest | Movies |
  /// Action and Adventure Movies.
  /// - "INTEREST__MOVIES__ANIMATION_MOVIES" : Interest | Movies | Animation
  /// Movies.
  /// - "INTEREST__MOVIES__COMEDY_MOVIES" : Interest | Movies | Comedy Movies.
  /// - "INTEREST__MOVIES__CRIME_AND_MYSTERY_MOVIES" : Interest | Movies | Crime
  /// and Mystery Movies.
  /// - "INTEREST__MOVIES__DOCUMENTARY_MOVIES" : Interest | Movies | Documentary
  /// Movies.
  /// - "INTEREST__MOVIES__DRAMA_MOVIES" : Interest | Movies | Drama Movies.
  /// - "INTEREST__MOVIES__FAMILY_AND_CHILDREN_MOVIES" : Interest | Movies |
  /// Family and Children Movies.
  /// - "INTEREST__MOVIES__FANTASY_MOVIES" : Interest | Movies | Fantasy Movies.
  /// - "INTEREST__MOVIES__HORROR_MOVIES" : Interest | Movies | Horror Movies.
  /// - "INTEREST__MOVIES__INDIE_AND_ARTHOUSE_MOVIES" : Interest | Movies |
  /// Indie and Arthouse Movies.
  /// - "INTEREST__MOVIES__ROMANCE_MOVIES" : Interest | Movies | Romance Movies.
  /// - "INTEREST__MOVIES__SCIENCE_FICTION_MOVIES" : Interest | Movies | Science
  /// Fiction Movies.
  /// - "INTEREST__MOVIES__WORLD_MOVIES" : Interest | Movies | World Movies.
  /// - "INTEREST__MUSIC_AND_AUDIO__ADULT_ALBUM_ALTERNATIVE" : Interest | Music
  /// and Audio | Adult Album Alternative.
  /// - "INTEREST__MUSIC_AND_AUDIO__ADULT_CONTEMPORARY_MUSIC" : Interest | Music
  /// and Audio | Adult Contemporary Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__ALTERNATIVE_MUSIC" : Interest | Music and
  /// Audio | Alternative Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__BLUES" : Interest | Music and Audio | Blues.
  /// - "INTEREST__MUSIC_AND_AUDIO__CHILDRENS_MUSIC" : Interest | Music and
  /// Audio | Children's Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__CLASSIC_HITS" : Interest | Music and Audio |
  /// Classic Hits.
  /// - "INTEREST__MUSIC_AND_AUDIO__CLASSICAL_MUSIC" : Interest | Music and
  /// Audio | Classical Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__COLLEGE_RADIO" : Interest | Music and Audio
  /// | College Radio.
  /// - "INTEREST__MUSIC_AND_AUDIO__COMEDY_MUSIC_AND_AUDIO" : Interest | Music
  /// and Audio | Comedy (Music and Audio).
  /// - "INTEREST__MUSIC_AND_AUDIO__CONTEMPORARY_HITS_POP_TOP_40" : Interest |
  /// Music and Audio | Contemporary Hits/Pop/Top 40.
  /// - "INTEREST__MUSIC_AND_AUDIO__COUNTRY_MUSIC" : Interest | Music and Audio
  /// | Country Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__DANCE_AND_ELECTRONIC_MUSIC" : Interest |
  /// Music and Audio | Dance and Electronic Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__GOSPEL_MUSIC" : Interest | Music and Audio |
  /// Gospel Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__HIP_HOP_MUSIC" : Interest | Music and Audio
  /// | Hip Hop Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__INSPIRATIONAL_NEW_AGE_MUSIC" : Interest |
  /// Music and Audio | Inspirational/New Age Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__JAZZ" : Interest | Music and Audio | Jazz.
  /// - "INTEREST__MUSIC_AND_AUDIO__OLDIES_ADULT_STANDARDS" : Interest | Music
  /// and Audio | Oldies/Adult Standards.
  /// - "INTEREST__MUSIC_AND_AUDIO__RNB_SOUL_FUNK" : Interest | Music and Audio
  /// | R&B/Soul/Funk.
  /// - "INTEREST__MUSIC_AND_AUDIO__REGGAE" : Interest | Music and Audio |
  /// Reggae.
  /// - "INTEREST__MUSIC_AND_AUDIO__RELIGIOUS__MUSIC_AND_AUDIO" : Interest |
  /// Music and Audio | Religious (Music and Audio).
  /// - "INTEREST__MUSIC_AND_AUDIO__ROCK_MUSIC" : Interest | Music and Audio |
  /// Rock Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__SONGWRITERS_FOLK" : Interest | Music and
  /// Audio | Songwriters/Folk.
  /// - "INTEREST__MUSIC_AND_AUDIO__SOUNDTRACKS_TV_AND_SHOWTUNES" : Interest |
  /// Music and Audio | Soundtracks, TV and Showtunes.
  /// - "INTEREST__MUSIC_AND_AUDIO__SPORTS_RADIO" : Interest | Music and Audio |
  /// Sports Radio.
  /// - "INTEREST__MUSIC_AND_AUDIO__TALK_RADIO" : Interest | Music and Audio |
  /// Talk Radio.
  /// - "INTEREST__MUSIC_AND_AUDIO__URBAN_CONTEMPORARY_MUSIC" : Interest | Music
  /// and Audio | Urban Contemporary Music.
  /// - "INTEREST__MUSIC_AND_AUDIO__VARIETY__MUSIC_AND_AUDIO" : Interest | Music
  /// and Audio | Variety (Music and Audio).
  /// - "INTEREST__MUSIC_AND_AUDIO__WORLD_INTERNATIONAL_MUSIC" : Interest |
  /// Music and Audio | World/International Music.
  /// - "INTEREST__NEWS_AND_POLITICS__CRIME" : Interest | News and Politics |
  /// Crime.
  /// - "INTEREST__NEWS_AND_POLITICS__DISASTERS" : Interest | News and Politics
  /// | Disasters.
  /// - "INTEREST__NEWS_AND_POLITICS__INTERNATIONAL_NEWS" : Interest | News and
  /// Politics | International News.
  /// - "INTEREST__NEWS_AND_POLITICS__LAW" : Interest | News and Politics | Law.
  /// - "INTEREST__NEWS_AND_POLITICS__LOCAL_NEWS" : Interest | News and Politics
  /// | Local News.
  /// - "INTEREST__NEWS_AND_POLITICS__NATIONAL_NEWS" : Interest | News and
  /// Politics | National News.
  /// - "INTEREST__NEWS_AND_POLITICS__POLITICS" : Interest | News and Politics |
  /// Politics.
  /// - "INTEREST__NEWS_AND_POLITICS__WEATHER" : Interest | News and Politics |
  /// Weather.
  /// - "INTEREST__PERSONAL_FINANCE__FRUGAL_LIVING" : Interest | Personal
  /// Finance | Frugal Living.
  /// - "INTEREST__PERSONAL_FINANCE__INSURANCE" : Interest | Personal Finance |
  /// Insurance.
  /// - "INTEREST__PERSONAL_FINANCE__PERSONAL_DEBT" : Interest | Personal
  /// Finance | Personal Debt.
  /// - "INTEREST__PERSONAL_FINANCE__PERSONAL_INVESTING" : Interest | Personal
  /// Finance | Personal Investing.
  /// - "INTEREST__PERSONAL_FINANCE__PERSONAL_TAXES" : Interest | Personal
  /// Finance | Personal Taxes.
  /// - "INTEREST__PERSONAL_FINANCE__RETIREMENT_PLANNING" : Interest | Personal
  /// Finance | Retirement Planning.
  /// - "INTEREST__PETS__BIRDS" : Interest | Pets | Birds.
  /// - "INTEREST__PETS__CATS" : Interest | Pets | Cats.
  /// - "INTEREST__PETS__DOGS" : Interest | Pets | Dogs.
  /// - "INTEREST__PETS__FISH_AND_AQUARIUMS" : Interest | Pets | Fish and
  /// Aquariums.
  /// - "INTEREST__PETS__HORSES_AND_EQUINE" : Interest | Pets | Horses and
  /// Equine.
  /// - "INTEREST__PETS__LARGE_ANIMALS" : Interest | Pets | Large Animals.
  /// - "INTEREST__PETS__PET_ADOPTIONS" : Interest | Pets | Pet Adoptions.
  /// - "INTEREST__PETS__REPTILES" : Interest | Pets | Reptiles.
  /// - "INTEREST__POP_CULTURE__HUMOR_AND_SATIRE" : Interest | Pop Culture |
  /// Humor and Satire.
  /// - "INTEREST__REAL_ESTATE__APARTMENTS" : Interest | Real Estate |
  /// Apartments.
  /// - "INTEREST__REAL_ESTATE__DEVELOPMENTAL_SITES" : Interest | Real Estate |
  /// Developmental Sites.
  /// - "INTEREST__REAL_ESTATE__HOTEL_PROPERTIES" : Interest | Real Estate |
  /// Hotel Properties.
  /// - "INTEREST__REAL_ESTATE__HOUSES" : Interest | Real Estate | Houses.
  /// - "INTEREST__REAL_ESTATE__INDUSTRIAL_PROPERTY" : Interest | Real Estate |
  /// Industrial Property.
  /// - "INTEREST__REAL_ESTATE__LAND_AND_FARMS" : Interest | Real Estate | Land
  /// and Farms.
  /// - "INTEREST__REAL_ESTATE__OFFICE_PROPERTY" : Interest | Real Estate |
  /// Office Property.
  /// - "INTEREST__REAL_ESTATE__REAL_ESTATE_BUYING_AND_SELLING" : Interest |
  /// Real Estate | Real Estate Buying and Selling.
  /// - "INTEREST__REAL_ESTATE__REAL_ESTATE_RENTING_AND_LEASING" : Interest |
  /// Real Estate | Real Estate Renting and Leasing.
  /// - "INTEREST__REAL_ESTATE__RETAIL_PROPERTY" : Interest | Real Estate |
  /// Retail Property.
  /// - "INTEREST__REAL_ESTATE__VACATION_PROPERTIES" : Interest | Real Estate |
  /// Vacation Properties.
  /// - "INTEREST__SPORTS__AMERICAN_FOOTBALL" : Interest | Sports | American
  /// Football.
  /// - "INTEREST__SPORTS__AUSTRALIAN_RULES_FOOTBALL" : Interest | Sports |
  /// Australian Rules Football.
  /// - "INTEREST__SPORTS__AUTO_RACING" : Interest | Sports | Auto Racing.
  /// - "INTEREST__SPORTS__BADMINTON" : Interest | Sports | Badminton.
  /// - "INTEREST__SPORTS__BASEBALL" : Interest | Sports | Baseball.
  /// - "INTEREST__SPORTS__BASKETBALL" : Interest | Sports | Basketball.
  /// - "INTEREST__SPORTS__BEACH_VOLLEYBALL" : Interest | Sports | Beach
  /// Volleyball.
  /// - "INTEREST__SPORTS__BODYBUILDING" : Interest | Sports | Bodybuilding.
  /// - "INTEREST__SPORTS__BOWLING" : Interest | Sports | Bowling.
  /// - "INTEREST__SPORTS__BOXING" : Interest | Sports | Boxing.
  /// - "INTEREST__SPORTS__CHEERLEADING" : Interest | Sports | Cheerleading.
  /// - "INTEREST__SPORTS__COLLEGE_SPORTS" : Interest | Sports | College Sports.
  /// - "INTEREST__SPORTS__CRICKET" : Interest | Sports | Cricket.
  /// - "INTEREST__SPORTS__CYCLING" : Interest | Sports | Cycling.
  /// - "INTEREST__SPORTS__DARTS" : Interest | Sports | Darts.
  /// - "INTEREST__SPORTS__DISABLED_SPORTS" : Interest | Sports | Disabled
  /// Sports.
  /// - "INTEREST__SPORTS__DIVING" : Interest | Sports | Diving.
  /// - "INTEREST__SPORTS__EQUINE_SPORTS" : Interest | Sports | Equine Sports.
  /// - "INTEREST__SPORTS__EXTREME_SPORTS" : Interest | Sports | Extreme Sports.
  /// - "INTEREST__SPORTS__FANTASY_SPORTS" : Interest | Sports | Fantasy Sports.
  /// - "INTEREST__SPORTS__FIELD_HOCKEY" : Interest | Sports | Field Hockey.
  /// - "INTEREST__SPORTS__FIGURE_SKATING" : Interest | Sports | Figure Skating.
  /// - "INTEREST__SPORTS__FISHING_SPORTS" : Interest | Sports | Fishing Sports.
  /// - "INTEREST__SPORTS__GOLF" : Interest | Sports | Golf.
  /// - "INTEREST__SPORTS__GYMNASTICS" : Interest | Sports | Gymnastics.
  /// - "INTEREST__SPORTS__HUNTING_AND_SHOOTING" : Interest | Sports | Hunting
  /// and Shooting.
  /// - "INTEREST__SPORTS__ICE_HOCKEY" : Interest | Sports | Ice Hockey.
  /// - "INTEREST__SPORTS__INLINE_SKATING" : Interest | Sports | Inline Skating.
  /// - "INTEREST__SPORTS__LACROSSE" : Interest | Sports | Lacrosse.
  /// - "INTEREST__SPORTS__MARTIAL_ARTS" : Interest | Sports | Martial Arts.
  /// - "INTEREST__SPORTS__OLYMPIC_SPORTS" : Interest | Sports | Olympic Sports.
  /// - "INTEREST__SPORTS__POKER_AND_PROFESSIONAL_GAMBLING" : Interest | Sports
  /// | Poker and Professional Gambling.
  /// - "INTEREST__SPORTS__RODEO" : Interest | Sports | Rodeo.
  /// - "INTEREST__SPORTS__ROWING" : Interest | Sports | Rowing.
  /// - "INTEREST__SPORTS__RUGBY" : Interest | Sports | Rugby.
  /// - "INTEREST__SPORTS__SAILING" : Interest | Sports | Sailing.
  /// - "INTEREST__SPORTS__SKIING" : Interest | Sports | Skiing.
  /// - "INTEREST__SPORTS__SNOOKER_POOL_BILLIARDS" : Interest | Sports |
  /// Snooker/Pool/Billiards.
  /// - "INTEREST__SPORTS__SOCCER" : Interest | Sports | Soccer.
  /// - "INTEREST__SPORTS__SOFTBALL" : Interest | Sports | Softball.
  /// - "INTEREST__SPORTS__SPORTS_EQUIPMENT" : Interest | Sports | Sports
  /// Equipment.
  /// - "INTEREST__SPORTS__SQUASH" : Interest | Sports | Squash.
  /// - "INTEREST__SPORTS__SWIMMING" : Interest | Sports | Swimming.
  /// - "INTEREST__SPORTS__TABLE_TENNIS" : Interest | Sports | Table Tennis.
  /// - "INTEREST__SPORTS__TENNIS" : Interest | Sports | Tennis.
  /// - "INTEREST__SPORTS__TRACK_AND_FIELD" : Interest | Sports | Track and
  /// Field.
  /// - "INTEREST__SPORTS__VOLLEYBALL" : Interest | Sports | Volleyball.
  /// - "INTEREST__SPORTS__WALKING" : Interest | Sports | Walking.
  /// - "INTEREST__SPORTS__WATER_POLO" : Interest | Sports | Water Polo.
  /// - "INTEREST__SPORTS__WEIGHTLIFTING" : Interest | Sports | Weightlifting.
  /// - "INTEREST__SPORTS__WRESTLING" : Interest | Sports | Wrestling.
  /// - "INTEREST__STYLE_AND_FASHION__BEAUTY" : Interest | Style & Fashion |
  /// Beauty.
  /// - "INTEREST__STYLE_AND_FASHION__BODY_ART" : Interest | Style & Fashion |
  /// Body Art.
  /// - "INTEREST__STYLE_AND_FASHION__CHILDRENS_CLOTHING" : Interest | Style &
  /// Fashion | Children's Clothing.
  /// - "INTEREST__STYLE_AND_FASHION__DESIGNER_CLOTHING" : Interest | Style &
  /// Fashion | Designer Clothing.
  /// - "INTEREST__STYLE_AND_FASHION__FASHION_TRENDS" : Interest | Style &
  /// Fashion | Fashion Trends.
  /// - "INTEREST__STYLE_AND_FASHION__HIGH_FASHION" : Interest | Style & Fashion
  /// | High Fashion.
  /// - "INTEREST__STYLE_AND_FASHION__MENS_FASHION" : Interest | Style & Fashion
  /// | Men's Fashion.
  /// - "INTEREST__STYLE_AND_FASHION__PERSONAL_CARE" : Interest | Style &
  /// Fashion | Personal Care.
  /// - "INTEREST__STYLE_AND_FASHION__STREET_STYLE" : Interest | Style & Fashion
  /// | Street Style.
  /// - "INTEREST__STYLE_AND_FASHION__WOMENS_FASHION" : Interest | Style &
  /// Fashion | Women's Fashion.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__ARTIFICIAL_INTELLIGENCE" : Interest
  /// | Technology & Computing | Artificial Intelligence.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__AUGMENTED_REALITY" : Interest |
  /// Technology & Computing | Augmented Reality.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__COMPUTING" : Interest | Technology
  /// & Computing | Computing.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__CONSUMER_ELECTRONICS" : Interest |
  /// Technology & Computing | Consumer Electronics.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__ROBOTICS" : Interest | Technology &
  /// Computing | Robotics.
  /// - "INTEREST__TECHNOLOGY_AND_COMPUTING__VIRTUAL_REALITY" : Interest |
  /// Technology & Computing | Virtual Reality.
  /// - "INTEREST__TELEVISION__ANIMATION_TV" : Interest | Television | Animation
  /// TV.
  /// - "INTEREST__TELEVISION__CHILDRENS_TV" : Interest | Television |
  /// Children's TV.
  /// - "INTEREST__TELEVISION__COMEDY_TV" : Interest | Television | Comedy TV.
  /// - "INTEREST__TELEVISION__DRAMA_TV" : Interest | Television | Drama TV.
  /// - "INTEREST__TELEVISION__FACTUAL_TV" : Interest | Television | Factual TV.
  /// - "INTEREST__TELEVISION__HOLIDAY_TV" : Interest | Television | Holiday TV.
  /// - "INTEREST__TELEVISION__MUSIC_TV" : Interest | Television | Music TV.
  /// - "INTEREST__TELEVISION__REALITY_TV" : Interest | Television | Reality TV.
  /// - "INTEREST__TELEVISION__SCIENCE_FICTION_TV" : Interest | Television |
  /// Science Fiction TV.
  /// - "INTEREST__TELEVISION__SOAP_OPERA_TV" : Interest | Television | Soap
  /// Opera TV.
  /// - "INTEREST__TELEVISION__SPECIAL_INTEREST_TV" : Interest | Television |
  /// Special Interest TV.
  /// - "INTEREST__TELEVISION__SPORTS_TV" : Interest | Television | Sports TV.
  /// - "INTEREST__TRAVEL__ADVENTURE_TRAVEL" : Interest | Travel | Adventure
  /// Travel.
  /// - "INTEREST__TRAVEL__AFRICA_TRAVEL" : Interest | Travel | Africa Travel.
  /// - "INTEREST__TRAVEL__ASIA_TRAVEL" : Interest | Travel | Asia Travel.
  /// - "INTEREST__TRAVEL__AUSTRALIA_AND_OCEANIA_TRAVEL" : Interest | Travel |
  /// Australia and Oceania Travel.
  /// - "INTEREST__TRAVEL__BEACH_TRAVEL" : Interest | Travel | Beach Travel.
  /// - "INTEREST__TRAVEL__CAMPING" : Interest | Travel | Camping.
  /// - "INTEREST__TRAVEL__DAY_TRIPS" : Interest | Travel | Day Trips.
  /// - "INTEREST__TRAVEL__EUROPE_TRAVEL" : Interest | Travel | Europe Travel.
  /// - "INTEREST__TRAVEL__FAMILY_TRAVEL" : Interest | Travel | Family Travel.
  /// - "INTEREST__TRAVEL__NORTH_AMERICA_TRAVEL" : Interest | Travel | North
  /// America Travel.
  /// - "INTEREST__TRAVEL__POLAR_TRAVEL" : Interest | Travel | Polar Travel.
  /// - "INTEREST__TRAVEL__ROAD_TRIPS" : Interest | Travel | Road Trips.
  /// - "INTEREST__TRAVEL__SOUTH_AMERICA_TRAVEL" : Interest | Travel | South
  /// America Travel.
  /// - "INTEREST__VIDEO_GAMING__CONSOLE_GAMES" : Interest | Video Gaming |
  /// Console Games.
  /// - "INTEREST__VIDEO_GAMING__ESPORTS" : Interest | Video Gaming | eSports.
  /// - "INTEREST__VIDEO_GAMING__MOBILE_GAMES" : Interest | Video Gaming |
  /// Mobile Games.
  /// - "INTEREST__VIDEO_GAMING__PC_GAMES" : Interest | Video Gaming | PC Games.
  /// - "INTEREST__VIDEO_GAMING__VIDEO_GAME_GENRES" : Interest | Video Gaming |
  /// Video Game Genres.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__HIGH_SCHOOL_GRADUATE" :
  /// Demographic | Education & Occupation | High school graduate.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__ASSOCIATES_DEGREE" : Demographic
  /// | Education & Occupation | Associate's degree.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__BACHELORS_DEGREE" : Demographic
  /// | Education & Occupation | Bachelor's degree.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__GRADUATE_DEGREE_AND_ABOVE" :
  /// Demographic | Education & Occupation | Graduate degree and above.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__EDUCATION_OTHER" : Demographic |
  /// Education & Occupation | Other.
  /// - "DEMOGRAPHIC__AGE_RANGE__18_TO_24" : Demographic | Age Range | 18-24.
  /// - "DEMOGRAPHIC__AGE_RANGE__25_TO_34" : Demographic | Age Range | 25-34.
  /// - "DEMOGRAPHIC__AGE_RANGE__35_TO_44" : Demographic | Age Range | 35-44.
  /// - "DEMOGRAPHIC__AGE_RANGE__45_TO_54" : Demographic | Age Range | 45-54.
  /// - "DEMOGRAPHIC__AGE_RANGE__55_AND_ABOVE" : Demographic | Age Range | 55+.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__LESS_THAN_10000" : Demographic | Household
  /// Data | Less than $10,000.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__10000_TO_49999" : Demographic | Household
  /// Data | $10,000-$49,999.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__50000_TO_149999" : Demographic | Household
  /// Data | $50,000-$149,999.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__150000_TO_249999" : Demographic |
  /// Household Data | $150,000-$249,999.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__250000_AND_ABOVE" : Demographic |
  /// Household Data | $250,000+.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__LESS_THAN_50000" : Deprecated: Demographic
  /// | Household Data | Less than $50,000.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__1_ADULT" : Demographic | Household Data |
  /// 1 Adult.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__2_ADULTS" : Demographic | Household Data |
  /// 2 Adults.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__3_AND_ABOVE_ADULTS" : Demographic |
  /// Household Data | 3+ Adults.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__0_CHILD" : Demographic | Household Data |
  /// 0 Child.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__1_CHILD" : Demographic | Household Data |
  /// 1 Child.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__2_CHILDREN" : Demographic | Household Data
  /// | 2 Children.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__3_AND_ABOVE_CHILDREN" : Demographic |
  /// Household Data | 3+ Children.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__RETIRED" : Demographic |
  /// Education & Occupation | Retired.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__STUDENT" : Demographic |
  /// Education & Occupation | Student.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__PART_TIME" : Demographic |
  /// Education & Occupation | Part-Time.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__FULL_TIME" : Demographic |
  /// Education & Occupation | Full-Time.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__SELF_EMPLOYED" : Demographic |
  /// Education & Occupation | Self-Employed.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__UNEMPLOYED_JOB_SEEKER" :
  /// Demographic | Education & Occupation | Unemployed / Job Seeker.
  /// - "PURCHASE_INTENT__BEAUTY" : Purchase Intent | Beauty.
  /// - "PURCHASE_INTENT__CLOTHING" : Purchase Intent | Clothing.
  /// - "PURCHASE_INTENT__CREDIT_CARDS" : Purchase Intent | Credit Cards.
  /// - "PURCHASE_INTENT__ELECTRONICS" : Purchase Intent | Electronics.
  /// - "PURCHASE_INTENT__HOME_AND_GARDEN_PRODUCTS" : Purchase Intent | Home and
  /// Garden Products.
  /// - "PURCHASE_INTENT__HOUSEHOLD_APPLIANCES" : Purchase Intent | Household
  /// Appliances.
  /// - "PURCHASE_INTENT__INSURANCE" : Purchase Intent | Insurance.
  /// - "PURCHASE_INTENT__NEW_OR_PRE_OWNED_VEHICLES" : Purchase Intent | New /
  /// Pre-owned vehicles.
  /// - "PURCHASE_INTENT__NONE_OF_THE_ABOVE" : Purchase Intent | None of the
  /// above.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS__ACCESS_TO_EXCLUSIVE_CONTENT" : Digital
  /// Subscription Benefits | Access to Exclusive Content.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS__ANYTIME_CANCELLATION" : Digital
  /// Subscription Benefits | Anytime Cancellation.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS__DISCOUNTED_SUBSCRIPTION_PLANS" : Digital
  /// Subscription Benefits | Discounted Subscription Plans.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS__EARLY_ACCESS" : Digital Subscription
  /// Benefits | Early Access.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS__SHARED_ACCESS" : Digital Subscription
  /// Benefits | Shared Access.
  core.String? category;

  /// Text label used for aggregating responses by category in analytics.
  ///
  /// Output only.
  core.String? categoryLabel;

  /// Localized answer choice text displayed to readers.
  ///
  /// Output only.
  core.String? displayText;

  /// Unique identifier of the answer choice within the question.
  ///
  /// Output only.
  core.int? id;

  AnswerChoiceTemplate({
    this.category,
    this.categoryLabel,
    this.displayText,
    this.id,
  });

  AnswerChoiceTemplate.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        categoryLabel: json_['categoryLabel'] as core.String?,
        displayText: json_['displayText'] as core.String?,
        id: json_['id'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final categoryLabel = this.categoryLabel;
    final displayText = this.displayText;
    final id = this.id;
    return {
      'category': ?category,
      'categoryLabel': ?categoryLabel,
      'displayText': ?displayText,
      'id': ?id,
    };
  }
}

/// Response message for CheckFreeAccess
class CheckFreeAccessResponse {
  /// True if free access should be allowed, false otherwise.
  ///
  /// Output only.
  core.bool? isAllowed;

  CheckFreeAccessResponse({this.isAllowed});

  CheckFreeAccessResponse.fromJson(core.Map json_)
    : this(isAllowed: json_['isAllowed'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final isAllowed = this.isAllowed;
    return {'isAllowed': ?isAllowed};
  }
}

/// Response message for `CheckProgramAccess`.
class CheckProgramAccessResponse {
  /// The entitlement access status.
  /// Possible string values are:
  /// - "PROGRAM_ACCESS_STATUS_UNSPECIFIED" : Status is unspecified.
  /// - "HAS_ACCESS" : The reader has active program access.
  /// - "NO_ACCESS" : The reader does not have active program access.
  /// - "CAP_EXHAUSTED" : The program access quota or meter has been exhausted.
  core.String? status;

  CheckProgramAccessResponse({this.status});

  CheckProgramAccessResponse.fromJson(core.Map json_)
    : this(status: json_['status'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final status = this.status;
    return {'status': ?status};
  }
}

/// The content policy status of the publication, indicating any violations.
class ContentPolicyStatus {
  /// URL pointing to more details about the policy violation or status.
  ///
  /// Output only.
  core.String? policyInfoUrl;

  /// The current policy state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unspecified.
  /// - "OK" : Content policy is in a good state; no violations.
  /// - "VIOLATION_GRACE_PERIOD" : The publication has a content policy
  /// violation but is within a grace period.
  /// - "VIOLATION_ACTIVE" : The publication has an active content policy
  /// violation.
  /// - "ORGANIZATION_VIOLATION_GRACE_PERIOD" : The organization has a content
  /// policy violation but is within a grace period.
  /// - "ORGANIZATION_VIOLATION_ACTIVE" : The organization has an active content
  /// policy violation.
  /// - "ORGANIZATION_VIOLATION_ACTIVE_IMMEDIATE" : The organization has an
  /// active content policy violation requiring immediate action.
  core.String? state;

  ContentPolicyStatus({this.policyInfoUrl, this.state});

  ContentPolicyStatus.fromJson(core.Map json_)
    : this(
        policyInfoUrl: json_['policyInfoUrl'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policyInfoUrl = this.policyInfoUrl;
    final state = this.state;
    return {'policyInfoUrl': ?policyInfoUrl, 'state': ?state};
  }
}

/// Represents a Call-To-Action (CTA) configuration for a publication.
class Cta {
  /// The user-visible display name of the CTA.
  ///
  /// Required.
  core.String? displayName;

  /// Identifier.
  ///
  /// The resource name of the Cta. Format:
  /// organizations/{organization}/publications/{publication}/ctas/{cta}
  core.String? name;

  /// Configuration specific to newsletter signup CTAs.
  ///
  /// Only populated if type is `NEWSLETTER_SIGNUP`.
  ///
  /// Optional.
  NewsletterConfig? newsletterConfig;

  /// The current state of this CTA.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified CTA state.
  /// - "DRAFT" : The CTA is a draft and not yet visible to users.
  /// - "ACTIVE" : The CTA is active and visible to users.
  core.String? state;

  /// Configuration specific to survey CTAs.
  ///
  /// Only populated if type is `SURVEY`.
  ///
  /// Optional.
  SurveyConfig? surveyConfig;

  /// The type of this CTA.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified CTA type.
  /// - "NEWSLETTER_SIGNUP" : CTA for newsletter subscription signup.
  /// - "SURVEY" : CTA for reader surveys.
  core.String? type;

  Cta({
    this.displayName,
    this.name,
    this.newsletterConfig,
    this.state,
    this.surveyConfig,
    this.type,
  });

  Cta.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        newsletterConfig: json_.containsKey('newsletterConfig')
            ? NewsletterConfig.fromJson(
                json_['newsletterConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        surveyConfig: json_.containsKey('surveyConfig')
            ? SurveyConfig.fromJson(
                json_['surveyConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final newsletterConfig = this.newsletterConfig;
    final state = this.state;
    final surveyConfig = this.surveyConfig;
    final type = this.type;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'newsletterConfig': ?newsletterConfig,
      'state': ?state,
      'surveyConfig': ?surveyConfig,
      'type': ?type,
    };
  }
}

/// An answer choice for a custom survey question.
class CustomAnswerChoice {
  /// The display text of the answer choice shown to readers.
  ///
  /// Required.
  core.String? displayText;

  CustomAnswerChoice({this.displayText});

  CustomAnswerChoice.fromJson(core.Map json_)
    : this(displayText: json_['displayText'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayText = this.displayText;
    return {'displayText': ?displayText};
  }
}

/// A custom question defined by the publisher.
class CustomQuestion {
  /// Ordered list of answer choices for the custom question (2-5 items).
  ///
  /// Required.
  core.List<CustomAnswerChoice>? answerChoices;

  /// Reporting category label sent to Google Analytics (up to 100 characters).
  ///
  /// Optional.
  core.String? categoryLabel;

  /// The question prompt displayed to readers (up to 140 characters).
  ///
  /// Optional.
  core.String? displayText;

  /// Server-assigned unique identifier for the custom question.
  ///
  /// Output only.
  core.String? id;

  CustomQuestion({
    this.answerChoices,
    this.categoryLabel,
    this.displayText,
    this.id,
  });

  CustomQuestion.fromJson(core.Map json_)
    : this(
        answerChoices: (json_['answerChoices'] as core.List?)
            ?.map(
              (value) => CustomAnswerChoice.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        categoryLabel: json_['categoryLabel'] as core.String?,
        displayText: json_['displayText'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerChoices = this.answerChoices;
    final categoryLabel = this.categoryLabel;
    final displayText = this.displayText;
    final id = this.id;
    return {
      'answerChoices': ?answerChoices,
      'categoryLabel': ?categoryLabel,
      'displayText': ?displayText,
      'id': ?id,
    };
  }
}

/// Represents a domain property associated with a publication, typically used
/// to verify ownership and scope access.
class DomainProperty {
  /// Whether the domain ownership has been verified (e.g., via Google Search
  /// Console).
  ///
  /// Output only.
  core.bool? ownershipVerified;

  /// The URL of the domain property (e.g., "https://example.com").
  ///
  /// Required.
  core.String? url;

  DomainProperty({this.ownershipVerified, this.url});

  DomainProperty.fromJson(core.Map json_)
    : this(
        ownershipVerified: json_['ownershipVerified'] as core.bool?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ownershipVerified = this.ownershipVerified;
    final url = this.url;
    return {'ownershipVerified': ?ownershipVerified, 'url': ?url};
  }
}

/// Request message for `GeneratePlatformSiteTokens`.
typedef GeneratePlatformSiteTokensRequest = $Empty;

/// Response message for `GeneratePlatformSiteTokens`.
class GeneratePlatformSiteTokensResponse {
  /// List of domain-scoped secure token mappings.
  core.List<SiteToken>? siteTokens;

  GeneratePlatformSiteTokensResponse({this.siteTokens});

  GeneratePlatformSiteTokensResponse.fromJson(core.Map json_)
    : this(
        siteTokens: (json_['siteTokens'] as core.List?)
            ?.map(
              (value) => SiteToken.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final siteTokens = this.siteTokens;
    return {'siteTokens': ?siteTokens};
  }
}

/// Response message for `ListCtas`.
class ListCtasResponse {
  /// The list of CTAs.
  ///
  /// Output only.
  core.List<Cta>? ctas;

  /// A token to retrieve the next page of results, or empty if there are no
  /// more results.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListCtasResponse({this.ctas, this.nextPageToken});

  ListCtasResponse.fromJson(core.Map json_)
    : this(
        ctas: (json_['ctas'] as core.List?)
            ?.map(
              (value) =>
                  Cta.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ctas = this.ctas;
    final nextPageToken = this.nextPageToken;
    return {'ctas': ?ctas, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for `ListPublications`.
class ListPublicationsResponse {
  /// A token to retrieve the next page of results, or empty if there are no
  /// more results.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The list of publications.
  ///
  /// Output only.
  core.List<Publication>? publications;

  ListPublicationsResponse({this.nextPageToken, this.publications});

  ListPublicationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        publications: (json_['publications'] as core.List?)
            ?.map(
              (value) => Publication.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final publications = this.publications;
    return {'nextPageToken': ?nextPageToken, 'publications': ?publications};
  }
}

/// Configuration for newsletter signup calls-to-action (CTAs).
class NewsletterConfig {
  /// Custom consent or disclosure text shown to the user.
  ///
  /// Optional.
  core.String? customConsentText;

  /// A custom message displayed to the user in the signup prompt.
  ///
  /// Optional.
  core.String? customMessage;

  /// Whether the user is required to provide their name to sign up.
  ///
  /// Optional.
  core.bool? nameRequired;

  /// Whether checking the opt-in checkbox is required.
  ///
  /// Optional.
  core.bool? optInRequired;

  /// The title of the newsletter signup prompt.
  ///
  /// Required.
  core.String? title;

  NewsletterConfig({
    this.customConsentText,
    this.customMessage,
    this.nameRequired,
    this.optInRequired,
    this.title,
  });

  NewsletterConfig.fromJson(core.Map json_)
    : this(
        customConsentText: json_['customConsentText'] as core.String?,
        customMessage: json_['customMessage'] as core.String?,
        nameRequired: json_['nameRequired'] as core.bool?,
        optInRequired: json_['optInRequired'] as core.bool?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customConsentText = this.customConsentText;
    final customMessage = this.customMessage;
    final nameRequired = this.nameRequired;
    final optInRequired = this.optInRequired;
    final title = this.title;
    return {
      'customConsentText': ?customConsentText,
      'customMessage': ?customMessage,
      'nameRequired': ?nameRequired,
      'optInRequired': ?optInRequired,
      'title': ?title,
    };
  }
}

/// A preset question referencing a template in the survey question catalog.
class PresetQuestion {
  /// Selected answer choice IDs from the question template.
  ///
  /// Required (2-5 unique IDs) when the catalog question is
  /// `CONFIGURABLE_CHOICES`, and must be omitted for `FIXED_CHOICES`.
  ///
  /// Optional.
  core.List<core.int>? answerIds;

  /// ID of the question template from `SurveyQuestionCatalog`.
  ///
  /// Required.
  core.int? questionId;

  PresetQuestion({this.answerIds, this.questionId});

  PresetQuestion.fromJson(core.Map json_)
    : this(
        answerIds: (json_['answerIds'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        questionId: json_['questionId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerIds = this.answerIds;
    final questionId = this.questionId;
    return {'answerIds': ?answerIds, 'questionId': ?questionId};
  }
}

/// Represents a publisher's publication in Reader Revenue Manager.
class Publication {
  /// Additional domain properties verified for the publication.
  ///
  /// Optional.
  core.List<DomainProperty>? additionalDomains;

  /// The content policy compliance status of the publication.
  ///
  /// Output only.
  ContentPolicyStatus? contentPolicyStatus;

  /// The user-visible display name of the publication.
  ///
  /// Required.
  core.String? displayName;

  /// The primary language of the publication (BCP-47 code, e.g., "en-US").
  ///
  /// Required.
  core.String? languageCode;

  /// Identifier.
  ///
  /// The resource name of the publication. Format:
  /// organizations/{organization}/publications/{publication}
  core.String? name;

  /// The current onboarding state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ONBOARDING_STATE_UNSPECIFIED" : Unspecified onboarding state.
  /// - "ACTION_REQUIRED" : Action is required from the publisher to proceed
  /// with onboarding.
  /// - "PENDING_VERIFICATION" : Publication is pending an external verification
  /// step. No immediate action is required.
  /// - "COMPLETE" : Onboarding is successfully completed.
  core.String? onboardingState;

  /// The unique identifier of the organization that owns this publication.
  ///
  /// Output only.
  core.String? organizationId;

  /// The configured payment option.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PAYMENT_OPTION_UNSPECIFIED" : Unspecified payment option.
  /// - "NONE" : No payment option configured.
  /// - "SUBSCRIPTIONS" : Publication supports paid subscriptions.
  /// - "CONTRIBUTIONS" : Publication supports voluntary contributions.
  core.String? paymentOption;

  /// The primary domain property associated with the publication.
  ///
  /// Required.
  DomainProperty? primaryDomain;

  /// The list of active products/features enabled for this publication.
  ///
  /// Output only.
  core.List<core.String>? products;

  /// The unique identifier of the publication.
  ///
  /// Output only.
  core.String? publicationId;

  /// The URL to the publisher's Privacy Policy.
  ///
  /// Optional.
  core.String? publicationPrivacyPolicyUrl;

  /// The URL to the publisher's own Terms of Service.
  ///
  /// Optional.
  core.String? publicationTosUrl;

  /// The publication entity type (for-profit vs non-profit).
  ///
  /// Defaults to FOR_PROFIT if omitted.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PUBLICATION_TYPE_UNSPECIFIED" : Unspecified publication type.
  /// - "FOR_PROFIT" : For-profit entity.
  /// - "NON_PROFIT" : Non-profit entity.
  core.String? publicationType;

  /// The ISO 3166-1 alpha-2 region code where the publication is registered
  /// (e.g., "US").
  ///
  /// Required.
  core.String? regionCode;

  /// Reader Revenue Manager product settings and status.
  ///
  /// Optional.
  RrmProduct? rrmProduct;

  /// Subscription Linking product configurations.
  ///
  /// Optional.
  SlProduct? slProduct;

  Publication({
    this.additionalDomains,
    this.contentPolicyStatus,
    this.displayName,
    this.languageCode,
    this.name,
    this.onboardingState,
    this.organizationId,
    this.paymentOption,
    this.primaryDomain,
    this.products,
    this.publicationId,
    this.publicationPrivacyPolicyUrl,
    this.publicationTosUrl,
    this.publicationType,
    this.regionCode,
    this.rrmProduct,
    this.slProduct,
  });

  Publication.fromJson(core.Map json_)
    : this(
        additionalDomains: (json_['additionalDomains'] as core.List?)
            ?.map(
              (value) => DomainProperty.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        contentPolicyStatus: json_.containsKey('contentPolicyStatus')
            ? ContentPolicyStatus.fromJson(
                json_['contentPolicyStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        name: json_['name'] as core.String?,
        onboardingState: json_['onboardingState'] as core.String?,
        organizationId: json_['organizationId'] as core.String?,
        paymentOption: json_['paymentOption'] as core.String?,
        primaryDomain: json_.containsKey('primaryDomain')
            ? DomainProperty.fromJson(
                json_['primaryDomain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        products: (json_['products'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        publicationId: json_['publicationId'] as core.String?,
        publicationPrivacyPolicyUrl:
            json_['publicationPrivacyPolicyUrl'] as core.String?,
        publicationTosUrl: json_['publicationTosUrl'] as core.String?,
        publicationType: json_['publicationType'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        rrmProduct: json_.containsKey('rrmProduct')
            ? RrmProduct.fromJson(
                json_['rrmProduct'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        slProduct: json_.containsKey('slProduct')
            ? SlProduct.fromJson(
                json_['slProduct'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalDomains = this.additionalDomains;
    final contentPolicyStatus = this.contentPolicyStatus;
    final displayName = this.displayName;
    final languageCode = this.languageCode;
    final name = this.name;
    final onboardingState = this.onboardingState;
    final organizationId = this.organizationId;
    final paymentOption = this.paymentOption;
    final primaryDomain = this.primaryDomain;
    final products = this.products;
    final publicationId = this.publicationId;
    final publicationPrivacyPolicyUrl = this.publicationPrivacyPolicyUrl;
    final publicationTosUrl = this.publicationTosUrl;
    final publicationType = this.publicationType;
    final regionCode = this.regionCode;
    final rrmProduct = this.rrmProduct;
    final slProduct = this.slProduct;
    return {
      'additionalDomains': ?additionalDomains,
      'contentPolicyStatus': ?contentPolicyStatus,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'name': ?name,
      'onboardingState': ?onboardingState,
      'organizationId': ?organizationId,
      'paymentOption': ?paymentOption,
      'primaryDomain': ?primaryDomain,
      'products': ?products,
      'publicationId': ?publicationId,
      'publicationPrivacyPolicyUrl': ?publicationPrivacyPolicyUrl,
      'publicationTosUrl': ?publicationTosUrl,
      'publicationType': ?publicationType,
      'regionCode': ?regionCode,
      'rrmProduct': ?rrmProduct,
      'slProduct': ?slProduct,
    };
  }
}

/// A predefined question template in the survey question catalog.
class QuestionTemplate {
  /// Possible answer choices for this question.
  ///
  /// Output only.
  core.List<AnswerChoiceTemplate>? answerChoices;

  /// Category of the question based on the IAB Audience Taxonomy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "QUESTION_CATEGORY_UNSPECIFIED" : Unspecified question category.
  /// - "INTEREST" : Interest.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__EDUCATION" : Demographic |
  /// Education & Occupation | Education.
  /// - "DEMOGRAPHIC__AGE_RANGE" : Demographic | Age Range.
  /// - "PURCHASE_INTENT" : Purchase Intent.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__HOUSEHOLD_INCOME_USD" : Demographic |
  /// Household Data | Household Income (USD).
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__NUMBER_OF_ADULTS" : Demographic |
  /// Household Data | Number of Adults.
  /// - "DEMOGRAPHIC__HOUSEHOLD_DATA__NUMBER_OF_CHILDREN" : Demographic |
  /// Household Data | Number of Children.
  /// - "DEMOGRAPHIC__EDUCATION_AND_OCCUPATION__EMPLOYMENT_STATUS" : Demographic
  /// | Education & Occupation | Employment Status.
  /// - "DIGITAL_SUBSCRIPTION_BENEFITS" : Digital Subscription Benefits.
  core.String? category;

  /// Text label used for aggregating responses by category in analytics.
  ///
  /// Output only.
  core.String? categoryLabel;

  /// The type of answer choice configuration for this question.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "QUESTION_CONFIGURATION_TYPE_UNSPECIFIED" : Unspecified question
  /// configuration type.
  /// - "FIXED_CHOICES" : Fixed set of answer choices for this question.
  /// Publishers are not able to select their own.
  /// - "CONFIGURABLE_CHOICES" : Publishers are able to select answer choices
  /// from `AnswerChoiceTemplate` for the question.
  core.String? configurationType;

  /// Localized question text displayed to readers.
  ///
  /// Output only.
  core.String? displayText;

  /// Unique identifier of the question template.
  ///
  /// Output only.
  core.int? id;

  QuestionTemplate({
    this.answerChoices,
    this.category,
    this.categoryLabel,
    this.configurationType,
    this.displayText,
    this.id,
  });

  QuestionTemplate.fromJson(core.Map json_)
    : this(
        answerChoices: (json_['answerChoices'] as core.List?)
            ?.map(
              (value) => AnswerChoiceTemplate.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        category: json_['category'] as core.String?,
        categoryLabel: json_['categoryLabel'] as core.String?,
        configurationType: json_['configurationType'] as core.String?,
        displayText: json_['displayText'] as core.String?,
        id: json_['id'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerChoices = this.answerChoices;
    final category = this.category;
    final categoryLabel = this.categoryLabel;
    final configurationType = this.configurationType;
    final displayText = this.displayText;
    final id = this.id;
    return {
      'answerChoices': ?answerChoices,
      'category': ?category,
      'categoryLabel': ?categoryLabel,
      'configurationType': ?configurationType,
      'displayText': ?displayText,
      'id': ?id,
    };
  }
}

/// Configuration and status of the Reader Revenue Manager (RRM) product for a
/// publication.
class RrmProduct {
  /// Whether the RRM product is enabled for the publication.
  ///
  /// Optional.
  core.bool? enabled;

  /// The URL to the product-specific Terms of Service.
  ///
  /// Output only.
  core.String? productTosUrl;

  /// The details of the TOS acceptance.
  ///
  /// Optional.
  TosAcceptance? tosAcceptance;

  RrmProduct({this.enabled, this.productTosUrl, this.tosAcceptance});

  RrmProduct.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        productTosUrl: json_['productTosUrl'] as core.String?,
        tosAcceptance: json_.containsKey('tosAcceptance')
            ? TosAcceptance.fromJson(
                json_['tosAcceptance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final productTosUrl = this.productTosUrl;
    final tosAcceptance = this.tosAcceptance;
    return {
      'enabled': ?enabled,
      'productTosUrl': ?productTosUrl,
      'tosAcceptance': ?tosAcceptance,
    };
  }
}

/// Represents a domain-scoped secure token mapping.
class SiteToken {
  /// The domain scope this token is valid for.
  core.String? domain;

  /// The domain-scoped secure token value (ESUT).
  core.String? token;

  SiteToken({this.domain, this.token});

  SiteToken.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domain = this.domain;
    final token = this.token;
    return {'domain': ?domain, 'token': ?token};
  }
}

/// Subscription Linking (SL) product settings and status.
class SlProduct {
  /// Whether the Subscription Linking product is enabled.
  ///
  /// Optional.
  core.bool? enabled;

  /// The Google Cloud Project number associated with the publication.
  ///
  /// Optional.
  core.String? gcpProjectNumber;

  SlProduct({this.enabled, this.gcpProjectNumber});

  SlProduct.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        gcpProjectNumber: json_['gcpProjectNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final gcpProjectNumber = this.gcpProjectNumber;
    return {'enabled': ?enabled, 'gcpProjectNumber': ?gcpProjectNumber};
  }
}

/// Configuration for survey calls-to-action (CTAs).
class SurveyConfig {
  /// Header prompt shown to readers.
  ///
  /// If omitted, the server populates the default prompt localized to the
  /// parent publication's configured primary language.
  ///
  /// Optional.
  core.String? customMessage;

  /// Ordered list of questions presented in the survey (1-3 items when
  /// `ACTIVE`; 0-3 when `DRAFT`).
  ///
  /// Optional.
  core.List<SurveyQuestion>? questions;

  /// Link to the Looker Studio dashboard.
  ///
  /// Output only.
  core.String? reportUrl;

  SurveyConfig({this.customMessage, this.questions, this.reportUrl});

  SurveyConfig.fromJson(core.Map json_)
    : this(
        customMessage: json_['customMessage'] as core.String?,
        questions: (json_['questions'] as core.List?)
            ?.map(
              (value) => SurveyQuestion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        reportUrl: json_['reportUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customMessage = this.customMessage;
    final questions = this.questions;
    final reportUrl = this.reportUrl;
    return {
      'customMessage': ?customMessage,
      'questions': ?questions,
      'reportUrl': ?reportUrl,
    };
  }
}

/// A single question within a survey, which can be either a preset question
/// from the catalog or a custom publisher-defined question.
class SurveyQuestion {
  /// A custom question defined by the publisher.
  ///
  /// Optional.
  CustomQuestion? customQuestion;

  /// A question selected from the preset question catalog.
  ///
  /// Optional.
  PresetQuestion? presetQuestion;

  SurveyQuestion({this.customQuestion, this.presetQuestion});

  SurveyQuestion.fromJson(core.Map json_)
    : this(
        customQuestion: json_.containsKey('customQuestion')
            ? CustomQuestion.fromJson(
                json_['customQuestion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        presetQuestion: json_.containsKey('presetQuestion')
            ? PresetQuestion.fromJson(
                json_['presetQuestion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customQuestion = this.customQuestion;
    final presetQuestion = this.presetQuestion;
    return {
      'customQuestion': ?customQuestion,
      'presetQuestion': ?presetQuestion,
    };
  }
}

/// Represents the catalog of predefined survey questions and localized answer
/// choices available for a publication.
class SurveyQuestionCatalog {
  /// Identifier.
  ///
  /// The resource name of the survey question catalog. Format:
  /// `organizations/{organization}/publications/{publication}/surveyQuestionCatalog`.
  core.String? name;

  /// The list of available predefined question templates.
  ///
  /// Output only.
  core.List<QuestionTemplate>? questions;

  SurveyQuestionCatalog({this.name, this.questions});

  SurveyQuestionCatalog.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        questions: (json_['questions'] as core.List?)
            ?.map(
              (value) => QuestionTemplate.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final questions = this.questions;
    return {'name': ?name, 'questions': ?questions};
  }
}

/// Details about the acceptance of the Terms of Service (TOS).
class TosAcceptance {
  /// Whether the user opted in to receive product updates and email
  /// communications.
  ///
  /// Optional.
  core.bool? emailOptIn;

  /// Whether the user has accepted the Terms of Service.
  ///
  /// Required.
  core.bool? userAccepted;

  TosAcceptance({this.emailOptIn, this.userAccepted});

  TosAcceptance.fromJson(core.Map json_)
    : this(
        emailOptIn: json_['emailOptIn'] as core.bool?,
        userAccepted: json_['userAccepted'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final emailOptIn = this.emailOptIn;
    final userAccepted = this.userAccepted;
    return {'emailOptIn': ?emailOptIn, 'userAccepted': ?userAccepted};
  }
}
