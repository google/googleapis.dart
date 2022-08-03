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

/// Fact Check Tools API - v1alpha1
///
/// For more information, see
/// <https://developers.google.com/fact-check/tools/api/>
///
/// Create an instance of [FactCheckToolsApi] to access these resources:
///
/// - [ClaimsResource]
/// - [PagesResource]
library factchecktools.v1alpha1;

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

class FactCheckToolsApi {
  /// See your primary Google Account email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ClaimsResource get claims => ClaimsResource(_requester);
  PagesResource get pages => PagesResource(_requester);

  FactCheckToolsApi(http.Client client,
      {core.String rootUrl = 'https://factchecktools.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ClaimsResource {
  final commons.ApiRequester _requester;

  ClaimsResource(commons.ApiRequester client) : _requester = client;

  /// Search through fact-checked claims.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// Can be used to restrict results by language, though we do not currently
  /// consider the region.
  ///
  /// [maxAgeDays] - The maximum age of the returned search results, in days.
  /// Age is determined by either claim date or review date, whichever is newer.
  ///
  /// [offset] - An integer that specifies the current offset (that is, starting
  /// result location) in search results. This field is only considered if
  /// `page_token` is unset. For example, 0 means to return results starting
  /// from the first matching result, and 10 means to return from the 11th
  /// result.
  ///
  /// [pageSize] - The pagination size. We will return up to that many results.
  /// Defaults to 10 if not set.
  ///
  /// [pageToken] - The pagination token. You may provide the `next_page_token`
  /// returned from a previous List request, if any, in order to get the next
  /// page. All other fields must have the same values as in the previous
  /// request.
  ///
  /// [query] - Textual query string. Required unless
  /// `review_publisher_site_filter` is specified.
  ///
  /// [reviewPublisherSiteFilter] - The review publisher site to filter results
  /// by, e.g. nytimes.com.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse>
      search({
    core.String? languageCode,
    core.int? maxAgeDays,
    core.int? offset,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? reviewPublisherSiteFilter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (maxAgeDays != null) 'maxAgeDays': ['${maxAgeDays}'],
      if (offset != null) 'offset': ['${offset}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (reviewPublisherSiteFilter != null)
        'reviewPublisherSiteFilter': [reviewPublisherSiteFilter],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/claims:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PagesResource {
  final commons.ApiRequester _requester;

  PagesResource(commons.ApiRequester client) : _requester = client;

  /// Create `ClaimReview` markup on a page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
      create(
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/pages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete all `ClaimReview` markup on a page.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to delete, in the form of
  /// `pages/{page_id}`.
  /// Value must have pattern `^pages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get all `ClaimReview` markup on a page.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to get, in the form of
  /// `pages/{page_id}`.
  /// Value must have pattern `^pages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
      get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the `ClaimReview` markup pages for a specific URL or for an
  /// organization.
  ///
  /// Request parameters:
  ///
  /// [offset] - An integer that specifies the current offset (that is, starting
  /// result location) in search results. This field is only considered if
  /// `page_token` is unset, and if the request is not for a specific URL. For
  /// example, 0 means to return results starting from the first matching
  /// result, and 10 means to return from the 11th result.
  ///
  /// [organization] - The organization for which we want to fetch markups for.
  /// For instance, "site.com". Cannot be specified along with an URL.
  ///
  /// [pageSize] - The pagination size. We will return up to that many results.
  /// Defaults to 10 if not set. Has no effect if a URL is requested.
  ///
  /// [pageToken] - The pagination token. You may provide the `next_page_token`
  /// returned from a previous List request, if any, in order to get the next
  /// page. All other fields must have the same values as in the previous
  /// request.
  ///
  /// [url] - The URL from which to get `ClaimReview` markup. There will be at
  /// most one result. If markup is associated with a more canonical version of
  /// the URL provided, we will return that URL instead. Cannot be specified
  /// along with an organization.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse>
      list({
    core.int? offset,
    core.String? organization,
    core.int? pageSize,
    core.String? pageToken,
    core.String? url,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (offset != null) 'offset': ['${offset}'],
      if (organization != null) 'organization': [organization],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (url != null) 'url': [url],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/pages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update for all `ClaimReview` markup on a page Note that this is a full
  /// update.
  ///
  /// To retain the existing `ClaimReview` markup on a page, first perform a Get
  /// operation, then modify the returned markup, and finally call Update with
  /// the entire `ClaimReview` markup as the body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of this `ClaimReview` markup page resource, in the form
  /// of `pages/{page_id}`. Except for update requests, this field is
  /// output-only and should not be set by the user.
  /// Value must have pattern `^pages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
      update(
    GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Information about the claim.
class GoogleFactcheckingFactchecktoolsV1alpha1Claim {
  /// The date that the claim was made.
  core.String? claimDate;

  /// One or more reviews of this claim (namely, a fact-checking article).
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview>? claimReview;

  /// A person or organization stating the claim.
  ///
  /// For instance, "John Doe".
  core.String? claimant;

  /// The claim text.
  ///
  /// For instance, "Crime has doubled in the last 2 years."
  core.String? text;

  GoogleFactcheckingFactchecktoolsV1alpha1Claim({
    this.claimDate,
    this.claimReview,
    this.claimant,
    this.text,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(core.Map json_)
      : this(
          claimDate: json_.containsKey('claimDate')
              ? json_['claimDate'] as core.String
              : null,
          claimReview: json_.containsKey('claimReview')
              ? (json_['claimReview'] as core.List)
                  .map((value) =>
                      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          claimant: json_.containsKey('claimant')
              ? json_['claimant'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (claimDate != null) 'claimDate': claimDate!,
        if (claimReview != null) 'claimReview': claimReview!,
        if (claimant != null) 'claimant': claimant!,
        if (text != null) 'text': text!,
      };
}

/// Information about the claim author.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor {
  /// Corresponds to `ClaimReview.itemReviewed.author.image`.
  core.String? imageUrl;

  /// Corresponds to `ClaimReview.itemReviewed.author.jobTitle`.
  core.String? jobTitle;

  /// A person or organization stating the claim.
  ///
  /// For instance, "John Doe". Corresponds to
  /// `ClaimReview.itemReviewed.author.name`.
  core.String? name;

  /// Corresponds to `ClaimReview.itemReviewed.author.sameAs`.
  core.String? sameAs;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor({
    this.imageUrl,
    this.jobTitle,
    this.name,
    this.sameAs,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(core.Map json_)
      : this(
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          jobTitle: json_.containsKey('jobTitle')
              ? json_['jobTitle'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sameAs: json_.containsKey('sameAs')
              ? json_['sameAs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (jobTitle != null) 'jobTitle': jobTitle!,
        if (name != null) 'name': name!,
        if (sameAs != null) 'sameAs': sameAs!,
      };
}

/// Information about the claim rating.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating {
  /// For numeric ratings, the best value possible in the scale from worst to
  /// best.
  ///
  /// Corresponds to `ClaimReview.reviewRating.bestRating`.
  core.int? bestRating;

  /// Corresponds to `ClaimReview.reviewRating.image`.
  core.String? imageUrl;

  /// Corresponds to `ClaimReview.reviewRating.ratingExplanation`.
  core.String? ratingExplanation;

  /// A numeric rating of this claim, in the range worstRating — bestRating
  /// inclusive.
  ///
  /// Corresponds to `ClaimReview.reviewRating.ratingValue`.
  core.int? ratingValue;

  /// The truthfulness rating as a human-readible short word or phrase.
  ///
  /// Corresponds to `ClaimReview.reviewRating.alternateName`.
  core.String? textualRating;

  /// For numeric ratings, the worst value possible in the scale from worst to
  /// best.
  ///
  /// Corresponds to `ClaimReview.reviewRating.worstRating`.
  core.int? worstRating;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating({
    this.bestRating,
    this.imageUrl,
    this.ratingExplanation,
    this.ratingValue,
    this.textualRating,
    this.worstRating,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(core.Map json_)
      : this(
          bestRating: json_.containsKey('bestRating')
              ? json_['bestRating'] as core.int
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          ratingExplanation: json_.containsKey('ratingExplanation')
              ? json_['ratingExplanation'] as core.String
              : null,
          ratingValue: json_.containsKey('ratingValue')
              ? json_['ratingValue'] as core.int
              : null,
          textualRating: json_.containsKey('textualRating')
              ? json_['textualRating'] as core.String
              : null,
          worstRating: json_.containsKey('worstRating')
              ? json_['worstRating'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestRating != null) 'bestRating': bestRating!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (ratingExplanation != null) 'ratingExplanation': ratingExplanation!,
        if (ratingValue != null) 'ratingValue': ratingValue!,
        if (textualRating != null) 'textualRating': textualRating!,
        if (worstRating != null) 'worstRating': worstRating!,
      };
}

/// Information about a claim review.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview {
  /// The language this review was written in.
  ///
  /// For instance, "en" or "de".
  core.String? languageCode;

  /// The publisher of this claim review.
  GoogleFactcheckingFactchecktoolsV1alpha1Publisher? publisher;

  /// The date the claim was reviewed.
  core.String? reviewDate;

  /// Textual rating.
  ///
  /// For instance, "Mostly false".
  core.String? textualRating;

  /// The title of this claim review, if it can be determined.
  core.String? title;

  /// The URL of this claim review.
  core.String? url;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview({
    this.languageCode,
    this.publisher,
    this.reviewDate,
    this.textualRating,
    this.title,
    this.url,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewDate: json_.containsKey('reviewDate')
              ? json_['reviewDate'] as core.String
              : null,
          textualRating: json_.containsKey('textualRating')
              ? json_['textualRating'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (publisher != null) 'publisher': publisher!,
        if (reviewDate != null) 'reviewDate': reviewDate!,
        if (textualRating != null) 'textualRating': textualRating!,
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

/// Information about the claim review author.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor {
  /// Corresponds to `ClaimReview.author.image`.
  core.String? imageUrl;

  /// Name of the organization that is publishing the fact check.
  ///
  /// Corresponds to `ClaimReview.author.name`.
  core.String? name;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor({
    this.imageUrl,
    this.name,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.fromJson(
      core.Map json_)
      : this(
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (name != null) 'name': name!,
      };
}

/// Fields for an individual `ClaimReview` element.
///
/// Except for sub-messages that group fields together, each of these fields
/// correspond those in https://schema.org/ClaimReview. We list the precise
/// mapping for each field.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup {
  /// A list of links to works in which this claim appears, aside from the one
  /// specified in `claim_first_appearance`.
  ///
  /// Corresponds to `ClaimReview.itemReviewed[@type=Claim].appearance.url`.
  core.List<core.String>? claimAppearances;

  /// Info about the author of this claim.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor? claimAuthor;

  /// The date when the claim was made or entered public discourse.
  ///
  /// Corresponds to `ClaimReview.itemReviewed.datePublished`.
  core.String? claimDate;

  /// A link to a work in which this claim first appears.
  ///
  /// Corresponds to
  /// `ClaimReview.itemReviewed[@type=Claim].firstAppearance.url`.
  core.String? claimFirstAppearance;

  /// The location where this claim was made.
  ///
  /// Corresponds to `ClaimReview.itemReviewed.name`.
  core.String? claimLocation;

  /// A short summary of the claim being evaluated.
  ///
  /// Corresponds to `ClaimReview.claimReviewed`.
  core.String? claimReviewed;

  /// Info about the rating of this claim review.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating? rating;

  /// This field is optional, and will default to the page URL.
  ///
  /// We provide this field to allow you the override the default value, but the
  /// only permitted override is the page URL plus an optional anchor link
  /// ("page jump"). Corresponds to `ClaimReview.url`
  core.String? url;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup({
    this.claimAppearances,
    this.claimAuthor,
    this.claimDate,
    this.claimFirstAppearance,
    this.claimLocation,
    this.claimReviewed,
    this.rating,
    this.url,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup.fromJson(
      core.Map json_)
      : this(
          claimAppearances: json_.containsKey('claimAppearances')
              ? (json_['claimAppearances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          claimAuthor: json_.containsKey('claimAuthor')
              ? GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(
                  json_['claimAuthor'] as core.Map<core.String, core.dynamic>)
              : null,
          claimDate: json_.containsKey('claimDate')
              ? json_['claimDate'] as core.String
              : null,
          claimFirstAppearance: json_.containsKey('claimFirstAppearance')
              ? json_['claimFirstAppearance'] as core.String
              : null,
          claimLocation: json_.containsKey('claimLocation')
              ? json_['claimLocation'] as core.String
              : null,
          claimReviewed: json_.containsKey('claimReviewed')
              ? json_['claimReviewed'] as core.String
              : null,
          rating: json_.containsKey('rating')
              ? GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(
                  json_['rating'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (claimAppearances != null) 'claimAppearances': claimAppearances!,
        if (claimAuthor != null) 'claimAuthor': claimAuthor!,
        if (claimDate != null) 'claimDate': claimDate!,
        if (claimFirstAppearance != null)
          'claimFirstAppearance': claimFirstAppearance!,
        if (claimLocation != null) 'claimLocation': claimLocation!,
        if (claimReviewed != null) 'claimReviewed': claimReviewed!,
        if (rating != null) 'rating': rating!,
        if (url != null) 'url': url!,
      };
}

/// Holds one or more instances of `ClaimReview` markup for a webpage.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage {
  /// Info about the author of this claim review.
  ///
  /// Similar to the above, semantically these are page-level fields, and each
  /// `ClaimReview` on this page will contain the same values.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor? claimReviewAuthor;

  /// A list of individual claim reviews for this page.
  ///
  /// Each item in the list corresponds to one `ClaimReview` element.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>?
      claimReviewMarkups;

  /// The name of this `ClaimReview` markup page resource, in the form of
  /// `pages/{page_id}`.
  ///
  /// Except for update requests, this field is output-only and should not be
  /// set by the user.
  core.String? name;

  /// The URL of the page associated with this `ClaimReview` markup.
  ///
  /// While every individual `ClaimReview` has its own URL field, semantically
  /// this is a page-level field, and each `ClaimReview` on this page will use
  /// this value unless individually overridden. Corresponds to
  /// `ClaimReview.url`
  core.String? pageUrl;

  /// The date when the fact check was published.
  ///
  /// Similar to the URL, semantically this is a page-level field, and each
  /// `ClaimReview` on this page will contain the same value. Corresponds to
  /// `ClaimReview.datePublished`
  core.String? publishDate;

  /// The version ID for this markup.
  ///
  /// Except for update requests, this field is output-only and should not be
  /// set by the user.
  core.String? versionId;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage({
    this.claimReviewAuthor,
    this.claimReviewMarkups,
    this.name,
    this.pageUrl,
    this.publishDate,
    this.versionId,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
      core.Map json_)
      : this(
          claimReviewAuthor: json_.containsKey('claimReviewAuthor')
              ? GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
                  .fromJson(json_['claimReviewAuthor']
                      as core.Map<core.String, core.dynamic>)
              : null,
          claimReviewMarkups: json_.containsKey('claimReviewMarkups')
              ? (json_['claimReviewMarkups'] as core.List)
                  .map((value) =>
                      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pageUrl: json_.containsKey('pageUrl')
              ? json_['pageUrl'] as core.String
              : null,
          publishDate: json_.containsKey('publishDate')
              ? json_['publishDate'] as core.String
              : null,
          versionId: json_.containsKey('versionId')
              ? json_['versionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (claimReviewAuthor != null) 'claimReviewAuthor': claimReviewAuthor!,
        if (claimReviewMarkups != null)
          'claimReviewMarkups': claimReviewMarkups!,
        if (name != null) 'name': name!,
        if (pageUrl != null) 'pageUrl': pageUrl!,
        if (publishDate != null) 'publishDate': publishDate!,
        if (versionId != null) 'versionId': versionId!,
      };
}

/// Response from searching fact-checked claims.
class GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse {
  /// The list of claims and all of their associated information.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1Claim>? claims;

  /// The next pagination token in the Search response.
  ///
  /// It should be used as the `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse({
    this.claims,
    this.nextPageToken,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse.fromJson(
      core.Map json_)
      : this(
          claims: json_.containsKey('claims')
              ? (json_['claims'] as core.List)
                  .map((value) =>
                      GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (claims != null) 'claims': claims!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response from listing `ClaimReview` markup.
class GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse {
  /// The result list of pages of `ClaimReview` markup.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>?
      claimReviewMarkupPages;

  /// The next pagination token in the Search response.
  ///
  /// It should be used as the `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse({
    this.claimReviewMarkupPages,
    this.nextPageToken,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse.fromJson(
      core.Map json_)
      : this(
          claimReviewMarkupPages: json_.containsKey('claimReviewMarkupPages')
              ? (json_['claimReviewMarkupPages'] as core.List)
                  .map((value) =>
                      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (claimReviewMarkupPages != null)
          'claimReviewMarkupPages': claimReviewMarkupPages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Information about the publisher.
class GoogleFactcheckingFactchecktoolsV1alpha1Publisher {
  /// The name of this publisher.
  ///
  /// For instance, "Awesome Fact Checks".
  core.String? name;

  /// Host-level site name, without the protocol or "www" prefix.
  ///
  /// For instance, "awesomefactchecks.com". This value of this field is based
  /// purely on the claim review URL.
  core.String? site;

  GoogleFactcheckingFactchecktoolsV1alpha1Publisher({
    this.name,
    this.site,
  });

  GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          site: json_.containsKey('site') ? json_['site'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (site != null) 'site': site!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
