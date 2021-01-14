// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import

library googleapis_beta.factchecktools.v1alpha1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client factchecktools/v1alpha1';

class FactchecktoolsApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ClaimsResourceApi get claims => ClaimsResourceApi(_requester);
  PagesResourceApi get pages => PagesResourceApi(_requester);

  FactchecktoolsApi(http.Client client,
      {core.String rootUrl = "https://factchecktools.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ClaimsResourceApi {
  final commons.ApiRequester _requester;

  ClaimsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Search through fact-checked claims.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The pagination token. You may provide the `next_page_token`
  /// returned from a previous List request, if any, in order to get the next
  /// page. All other fields must have the same values as in the previous
  /// request.
  ///
  /// [pageSize] - The pagination size. We will return up to that many results.
  /// Defaults to 10 if not set.
  ///
  /// [maxAgeDays] - The maximum age of the returned search results, in days.
  /// Age is determined by either claim date or review date, whichever is newer.
  ///
  /// [languageCode] - The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// Can be used to restrict results by language, though we do not currently
  /// consider the region.
  ///
  /// [offset] - An integer that specifies the current offset (that is, starting
  /// result location) in search results. This field is only considered if
  /// `page_token` is unset. For example, 0 means to return results starting
  /// from the first matching result, and 10 means to return from the 11th
  /// result.
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
    core.String pageToken,
    core.int pageSize,
    core.int maxAgeDays,
    core.String languageCode,
    core.int offset,
    core.String query,
    core.String reviewPublisherSiteFilter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (maxAgeDays != null) {
      _queryParams["maxAgeDays"] = ["${maxAgeDays}"];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (offset != null) {
      _queryParams["offset"] = ["${offset}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (reviewPublisherSiteFilter != null) {
      _queryParams["reviewPublisherSiteFilter"] = [reviewPublisherSiteFilter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/claims:search';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
            .fromJson(data));
  }
}

class PagesResourceApi {
  final commons.ApiRequester _requester;

  PagesResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/pages';

    final _response = _requester.request(
      _url,
      "POST",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
            data));
  }

  /// Delete all `ClaimReview` markup on a page.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to delete, in the form of
  /// `pages/{page_id}`.
  /// Value must have pattern "^pages/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "DELETE",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Get all `ClaimReview` markup on a page.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to get, in the form of
  /// `pages/{page_id}`.
  /// Value must have pattern "^pages/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
            data));
  }

  /// List the `ClaimReview` markup pages for a specific URL or for an
  /// organization.
  ///
  /// Request parameters:
  ///
  /// [url] - The URL from which to get `ClaimReview` markup. There will be at
  /// most one result. If markup is associated with a more canonical version of
  /// the URL provided, we will return that URL instead. Cannot be specified
  /// along with an organization.
  ///
  /// [pageSize] - The pagination size. We will return up to that many results.
  /// Defaults to 10 if not set. Has no effect if a URL is requested.
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
  /// [pageToken] - The pagination token. You may provide the `next_page_token`
  /// returned from a previous List request, if any, in order to get the next
  /// page. All other fields must have the same values as in the previous
  /// request.
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
    core.String url,
    core.int pageSize,
    core.int offset,
    core.String organization,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (url != null) {
      _queryParams["url"] = [url];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (offset != null) {
      _queryParams["offset"] = ["${offset}"];
    }
    if (organization != null) {
      _queryParams["organization"] = [organization];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/pages';

    final _response = _requester.request(
      _url,
      "GET",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
            .fromJson(data));
  }

  /// Update for all `ClaimReview` markup on a page Note that this is a full
  /// update. To retain the existing `ClaimReview` markup on a page, first
  /// perform a Get operation, then modify the returned markup, and finally call
  /// Update with the entire `ClaimReview` markup as the body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of this `ClaimReview` markup page resource, in the form
  /// of `pages/{page_id}`. Except for update requests, this field is
  /// output-only and should not be set by the user.
  /// Value must have pattern "^pages/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      "PUT",
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
            data));
  }
}

/// Information about the claim.
class GoogleFactcheckingFactchecktoolsV1alpha1Claim {
  /// The date that the claim was made.
  core.String claimDate;

  /// One or more reviews of this claim (namely, a fact-checking article).
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview> claimReview;

  /// A person or organization stating the claim. For instance, "John Doe".
  core.String claimant;

  /// The claim text. For instance, "Crime has doubled in the last 2 years."
  core.String text;

  GoogleFactcheckingFactchecktoolsV1alpha1Claim();

  GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(core.Map _json) {
    if (_json.containsKey("claimDate")) {
      claimDate = _json["claimDate"];
    }
    if (_json.containsKey("claimReview")) {
      claimReview = (_json["claimReview"] as core.List)
          .map<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview>((value) =>
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("claimant")) {
      claimant = _json["claimant"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (claimDate != null) {
      _json["claimDate"] = claimDate;
    }
    if (claimReview != null) {
      _json["claimReview"] =
          claimReview.map((value) => value.toJson()).toList();
    }
    if (claimant != null) {
      _json["claimant"] = claimant;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Information about the claim author.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor {
  /// Corresponds to `ClaimReview.itemReviewed.author.image`.
  core.String imageUrl;

  /// Corresponds to `ClaimReview.itemReviewed.author.jobTitle`.
  core.String jobTitle;

  /// A person or organization stating the claim. For instance, "John Doe".
  /// Corresponds to `ClaimReview.itemReviewed.author.name`.
  core.String name;

  /// Corresponds to `ClaimReview.itemReviewed.author.sameAs`.
  core.String sameAs;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(core.Map _json) {
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("jobTitle")) {
      jobTitle = _json["jobTitle"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sameAs")) {
      sameAs = _json["sameAs"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (jobTitle != null) {
      _json["jobTitle"] = jobTitle;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sameAs != null) {
      _json["sameAs"] = sameAs;
    }
    return _json;
  }
}

/// Information about the claim rating.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating {
  /// For numeric ratings, the best value possible in the scale from worst to
  /// best. Corresponds to `ClaimReview.reviewRating.bestRating`.
  core.int bestRating;

  /// Corresponds to `ClaimReview.reviewRating.image`.
  core.String imageUrl;

  /// Corresponds to `ClaimReview.reviewRating.ratingExplanation`.
  core.String ratingExplanation;

  /// A numeric rating of this claim, in the range worstRating — bestRating
  /// inclusive. Corresponds to `ClaimReview.reviewRating.ratingValue`.
  core.int ratingValue;

  /// The truthfulness rating as a human-readible short word or phrase.
  /// Corresponds to `ClaimReview.reviewRating.alternateName`.
  core.String textualRating;

  /// For numeric ratings, the worst value possible in the scale from worst to
  /// best. Corresponds to `ClaimReview.reviewRating.worstRating`.
  core.int worstRating;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(core.Map _json) {
    if (_json.containsKey("bestRating")) {
      bestRating = _json["bestRating"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("ratingExplanation")) {
      ratingExplanation = _json["ratingExplanation"];
    }
    if (_json.containsKey("ratingValue")) {
      ratingValue = _json["ratingValue"];
    }
    if (_json.containsKey("textualRating")) {
      textualRating = _json["textualRating"];
    }
    if (_json.containsKey("worstRating")) {
      worstRating = _json["worstRating"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bestRating != null) {
      _json["bestRating"] = bestRating;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (ratingExplanation != null) {
      _json["ratingExplanation"] = ratingExplanation;
    }
    if (ratingValue != null) {
      _json["ratingValue"] = ratingValue;
    }
    if (textualRating != null) {
      _json["textualRating"] = textualRating;
    }
    if (worstRating != null) {
      _json["worstRating"] = worstRating;
    }
    return _json;
  }
}

/// Information about a claim review.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview {
  /// The language this review was written in. For instance, "en" or "de".
  core.String languageCode;

  /// The publisher of this claim review.
  GoogleFactcheckingFactchecktoolsV1alpha1Publisher publisher;

  /// The date the claim was reviewed.
  core.String reviewDate;

  /// Textual rating. For instance, "Mostly false".
  core.String textualRating;

  /// The title of this claim review, if it can be determined.
  core.String title;

  /// The URL of this claim review.
  core.String url;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("publisher")) {
      publisher = GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(
          _json["publisher"]);
    }
    if (_json.containsKey("reviewDate")) {
      reviewDate = _json["reviewDate"];
    }
    if (_json.containsKey("textualRating")) {
      textualRating = _json["textualRating"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (publisher != null) {
      _json["publisher"] = publisher.toJson();
    }
    if (reviewDate != null) {
      _json["reviewDate"] = reviewDate;
    }
    if (textualRating != null) {
      _json["textualRating"] = textualRating;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Information about the claim review author.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor {
  /// Corresponds to `ClaimReview.author.image`.
  core.String imageUrl;

  /// Name of the organization that is publishing the fact check. Corresponds to
  /// `ClaimReview.author.name`.
  core.String name;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.fromJson(
      core.Map _json) {
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Fields for an individual `ClaimReview` element. Except for sub-messages that
/// group fields together, each of these fields correspond those in
/// https://schema.org/ClaimReview. We list the precise mapping for each field.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup {
  /// A list of links to works in which this claim appears, aside from the one
  /// specified in `claim_first_appearance`. Corresponds to
  /// `ClaimReview.itemReviewed[@type=Claim].appearance.url`.
  core.List<core.String> claimAppearances;

  /// Info about the author of this claim.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor claimAuthor;

  /// The date when the claim was made or entered public discourse. Corresponds
  /// to `ClaimReview.itemReviewed.datePublished`.
  core.String claimDate;

  /// A link to a work in which this claim first appears. Corresponds to
  /// `ClaimReview.itemReviewed[@type=Claim].firstAppearance.url`.
  core.String claimFirstAppearance;

  /// The location where this claim was made. Corresponds to
  /// `ClaimReview.itemReviewed.name`.
  core.String claimLocation;

  /// A short summary of the claim being evaluated. Corresponds to
  /// `ClaimReview.claimReviewed`.
  core.String claimReviewed;

  /// Info about the rating of this claim review.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating rating;

  /// This field is optional, and will default to the page URL. We provide this
  /// field to allow you the override the default value, but the only permitted
  /// override is the page URL plus an optional anchor link ("page jump").
  /// Corresponds to `ClaimReview.url`
  core.String url;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup.fromJson(
      core.Map _json) {
    if (_json.containsKey("claimAppearances")) {
      claimAppearances =
          (_json["claimAppearances"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("claimAuthor")) {
      claimAuthor =
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(
              _json["claimAuthor"]);
    }
    if (_json.containsKey("claimDate")) {
      claimDate = _json["claimDate"];
    }
    if (_json.containsKey("claimFirstAppearance")) {
      claimFirstAppearance = _json["claimFirstAppearance"];
    }
    if (_json.containsKey("claimLocation")) {
      claimLocation = _json["claimLocation"];
    }
    if (_json.containsKey("claimReviewed")) {
      claimReviewed = _json["claimReviewed"];
    }
    if (_json.containsKey("rating")) {
      rating = GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(
          _json["rating"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (claimAppearances != null) {
      _json["claimAppearances"] = claimAppearances;
    }
    if (claimAuthor != null) {
      _json["claimAuthor"] = claimAuthor.toJson();
    }
    if (claimDate != null) {
      _json["claimDate"] = claimDate;
    }
    if (claimFirstAppearance != null) {
      _json["claimFirstAppearance"] = claimFirstAppearance;
    }
    if (claimLocation != null) {
      _json["claimLocation"] = claimLocation;
    }
    if (claimReviewed != null) {
      _json["claimReviewed"] = claimReviewed;
    }
    if (rating != null) {
      _json["rating"] = rating.toJson();
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Holds one or more instances of `ClaimReview` markup for a webpage.
class GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage {
  /// Info about the author of this claim review. Similar to the above,
  /// semantically these are page-level fields, and each `ClaimReview` on this
  /// page will contain the same values.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor claimReviewAuthor;

  /// A list of individual claim reviews for this page. Each item in the list
  /// corresponds to one `ClaimReview` element.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>
      claimReviewMarkups;

  /// The name of this `ClaimReview` markup page resource, in the form of
  /// `pages/{page_id}`. Except for update requests, this field is output-only
  /// and should not be set by the user.
  core.String name;

  /// The URL of the page associated with this `ClaimReview` markup. While every
  /// individual `ClaimReview` has its own URL field, semantically this is a
  /// page-level field, and each `ClaimReview` on this page will use this value
  /// unless individually overridden. Corresponds to `ClaimReview.url`
  core.String pageUrl;

  /// The date when the fact check was published. Similar to the URL,
  /// semantically this is a page-level field, and each `ClaimReview` on this
  /// page will contain the same value. Corresponds to
  /// `ClaimReview.datePublished`
  core.String publishDate;

  /// The version ID for this markup. Except for update requests, this field is
  /// output-only and should not be set by the user.
  core.String versionId;

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();

  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
      core.Map _json) {
    if (_json.containsKey("claimReviewAuthor")) {
      claimReviewAuthor =
          GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.fromJson(
              _json["claimReviewAuthor"]);
    }
    if (_json.containsKey("claimReviewMarkups")) {
      claimReviewMarkups = (_json["claimReviewMarkups"] as core.List)
          .map<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>(
              (value) =>
                  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pageUrl")) {
      pageUrl = _json["pageUrl"];
    }
    if (_json.containsKey("publishDate")) {
      publishDate = _json["publishDate"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (claimReviewAuthor != null) {
      _json["claimReviewAuthor"] = claimReviewAuthor.toJson();
    }
    if (claimReviewMarkups != null) {
      _json["claimReviewMarkups"] =
          claimReviewMarkups.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pageUrl != null) {
      _json["pageUrl"] = pageUrl;
    }
    if (publishDate != null) {
      _json["publishDate"] = publishDate;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    return _json;
  }
}

/// Response from searching fact-checked claims.
class GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse {
  /// The list of claims and all of their associated information.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1Claim> claims;

  /// The next pagination token in the Search response. It should be used as the
  /// `page_token` for the following request. An empty value means no more
  /// results.
  core.String nextPageToken;

  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse();

  GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("claims")) {
      claims = (_json["claims"] as core.List)
          .map<GoogleFactcheckingFactchecktoolsV1alpha1Claim>((value) =>
              GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (claims != null) {
      _json["claims"] = claims.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response from listing `ClaimReview` markup.
class GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse {
  /// The result list of pages of `ClaimReview` markup.
  core.List<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
      claimReviewMarkupPages;

  /// The next pagination token in the Search response. It should be used as the
  /// `page_token` for the following request. An empty value means no more
  /// results.
  core.String nextPageToken;

  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse();

  GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("claimReviewMarkupPages")) {
      claimReviewMarkupPages = (_json["claimReviewMarkupPages"] as core.List)
          .map<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>(
              (value) =>
                  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (claimReviewMarkupPages != null) {
      _json["claimReviewMarkupPages"] =
          claimReviewMarkupPages.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Information about the publisher.
class GoogleFactcheckingFactchecktoolsV1alpha1Publisher {
  /// The name of this publisher. For instance, "Awesome Fact Checks".
  core.String name;

  /// Host-level site name, without the protocol or "www" prefix. For instance,
  /// "awesomefactchecks.com". This value of this field is based purely on the
  /// claim review URL.
  core.String site;

  GoogleFactcheckingFactchecktoolsV1alpha1Publisher();

  GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("site")) {
      site = _json["site"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json["name"] = name;
    }
    if (site != null) {
      _json["site"] = site;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}
