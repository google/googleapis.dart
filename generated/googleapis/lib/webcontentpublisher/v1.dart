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
  /// https://www.googleapis.com/auth/subscribewithgoogle.publications.entitlements.manage
  static const subscribewithgooglePublicationsEntitlementsManageScope =
      'https://www.googleapis.com/auth/subscribewithgoogle.publications.entitlements.manage';

  /// See and review your subscription information
  static const subscribewithgooglePublicationsEntitlementsReadonlyScope =
      'https://www.googleapis.com/auth/subscribewithgoogle.publications.entitlements.readonly';

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

  /// Lists publications.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization whose publications to list.
  /// Format: `organizations/{organization}`.
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
  /// publications/{publication_id}
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
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified CTA state.
  /// - "DRAFT" : The CTA is a draft and not yet visible to users.
  /// - "ACTIVE" : The CTA is active and visible to users.
  core.String? state;

  /// The type of this CTA.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified CTA type.
  /// - "NEWSLETTER_SIGNUP" : CTA for newsletter subscription signup.
  core.String? type;

  Cta({
    this.displayName,
    this.name,
    this.newsletterConfig,
    this.state,
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
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final newsletterConfig = this.newsletterConfig;
    final state = this.state;
    final type = this.type;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'newsletterConfig': ?newsletterConfig,
      'state': ?state,
      'type': ?type,
    };
  }
}

/// Represents a domain property associated with a publication, typically used
/// to verify ownership and scope access.
class DomainProperty {
  /// Whether the domain ownership has been verified (e.g., via Google Search
  /// Console).
  ///
  /// Optional.
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

/// Details about the acceptance of the Terms of Service (TOS).
class TosAcceptance {
  /// Whether the user opted in to receive product updates and email
  /// communications.
  ///
  /// Optional.
  core.bool? emailOptIn;

  /// The name of the person who accepted the TOS.
  ///
  /// Optional.
  core.String? signer;

  /// The job title or role of the signer.
  ///
  /// Optional.
  core.String? signerTitle;

  /// Whether the user has accepted the Terms of Service.
  ///
  /// Required.
  core.bool? userAccepted;

  TosAcceptance({
    this.emailOptIn,
    this.signer,
    this.signerTitle,
    this.userAccepted,
  });

  TosAcceptance.fromJson(core.Map json_)
    : this(
        emailOptIn: json_['emailOptIn'] as core.bool?,
        signer: json_['signer'] as core.String?,
        signerTitle: json_['signerTitle'] as core.String?,
        userAccepted: json_['userAccepted'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final emailOptIn = this.emailOptIn;
    final signer = this.signer;
    final signerTitle = this.signerTitle;
    final userAccepted = this.userAccepted;
    return {
      'emailOptIn': ?emailOptIn,
      'signer': ?signer,
      'signerTitle': ?signerTitle,
      'userAccepted': ?userAccepted,
    };
  }
}
