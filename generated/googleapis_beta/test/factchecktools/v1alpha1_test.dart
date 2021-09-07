// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/factchecktools/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview>
    buildUnnamed8158() => [
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(),
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(),
        ];

void checkUnnamed8158(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(o[1]);
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim = 0;
api.GoogleFactcheckingFactchecktoolsV1alpha1Claim
    buildGoogleFactcheckingFactchecktoolsV1alpha1Claim() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1Claim();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim < 3) {
    o.claimDate = 'foo';
    o.claimReview = buildUnnamed8158();
    o.claimant = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(
    api.GoogleFactcheckingFactchecktoolsV1alpha1Claim o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim < 3) {
    unittest.expect(
      o.claimDate!,
      unittest.equals('foo'),
    );
    checkUnnamed8158(o.claimReview!);
    unittest.expect(
      o.claimant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor = 0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor < 3) {
    o.imageUrl = 'foo';
    o.jobTitle = 'foo';
    o.name = 'foo';
    o.sameAs = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor < 3) {
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sameAs!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating = 0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating < 3) {
    o.bestRating = 42;
    o.imageUrl = 'foo';
    o.ratingExplanation = 'foo';
    o.ratingValue = 42;
    o.textualRating = 'foo';
    o.worstRating = 42;
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating < 3) {
    unittest.expect(
      o.bestRating!,
      unittest.equals(42),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratingExplanation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratingValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.textualRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.worstRating!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview = 0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview < 3) {
    o.languageCode = 'foo';
    o.publisher = buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher();
    o.reviewDate = 'foo';
    o.textualRating = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(o.publisher!);
    unittest.expect(
      o.reviewDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textualRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor =
    0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor <
      3) {
    o.imageUrl = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor <
      3) {
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor--;
}

core.List<core.String> buildUnnamed8159() => [
      'foo',
      'foo',
    ];

void checkUnnamed8159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup =
    0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup <
      3) {
    o.claimAppearances = buildUnnamed8159();
    o.claimAuthor = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
    o.claimDate = 'foo';
    o.claimFirstAppearance = 'foo';
    o.claimLocation = 'foo';
    o.claimReviewed = 'foo';
    o.rating = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
    o.url = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup <
      3) {
    checkUnnamed8159(o.claimAppearances!);
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(o.claimAuthor!);
    unittest.expect(
      o.claimDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.claimFirstAppearance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.claimLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.claimReviewed!,
      unittest.equals('foo'),
    );
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(o.rating!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup--;
}

core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>
    buildUnnamed8160() => [
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(),
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(),
        ];

void checkUnnamed8160(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage =
    0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage <
      3) {
    o.claimReviewAuthor =
        buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
    o.claimReviewMarkups = buildUnnamed8160();
    o.name = 'foo';
    o.pageUrl = 'foo';
    o.publishDate = 'foo';
    o.versionId = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage <
      3) {
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(
        o.claimReviewAuthor!);
    checkUnnamed8160(o.claimReviewMarkups!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage--;
}

core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1Claim>
    buildUnnamed8161() => [
          buildGoogleFactcheckingFactchecktoolsV1alpha1Claim(),
          buildGoogleFactcheckingFactchecktoolsV1alpha1Claim(),
        ];

void checkUnnamed8161(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1Claim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse =
    0;
api.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
    buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse() {
  final o = api
      .GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse <
      3) {
    o.claims = buildUnnamed8161();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
    api.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
        o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse <
      3) {
    checkUnnamed8161(o.claims!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse--;
}

core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
    buildUnnamed8162() => [
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(),
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(),
        ];

void checkUnnamed8162(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse =
    0;
api.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
    buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse() {
  final o = api
      .GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse <
      3) {
    o.claimReviewMarkupPages = buildUnnamed8162();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
        o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse <
      3) {
    checkUnnamed8162(o.claimReviewMarkupPages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher = 0;
api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher
    buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher() {
  final o = api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher < 3) {
    o.name = 'foo';
    o.site = 'foo';
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher--;
  return o;
}

void checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(
    api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.site!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

void main() {
  unittest.group('obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1Claim',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFactcheckingFactchecktoolsV1alpha1Claim();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1Publisher',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-ClaimsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).claims;
      final arg_languageCode = 'foo';
      final arg_maxAgeDays = 42;
      final arg_offset = 42;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_reviewPublisherSiteFilter = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1alpha1/claims:search'),
        );
        pathOffset += 22;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap['maxAgeDays']!.first),
          unittest.equals(arg_maxAgeDays),
        );
        unittest.expect(
          core.int.parse(queryMap['offset']!.first),
          unittest.equals(arg_offset),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['reviewPublisherSiteFilter']!.first,
          unittest.equals(arg_reviewPublisherSiteFilter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          languageCode: arg_languageCode,
          maxAgeDays: arg_maxAgeDays,
          offset: arg_offset,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          reviewPublisherSiteFilter: arg_reviewPublisherSiteFilter,
          $fields: arg_$fields);
      checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
          response as api
              .GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse);
    });
  });

  unittest.group('resource-PagesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).pages;
      final arg_request =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1alpha1/pages'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
          response as api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).pages;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).pages;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
          response as api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).pages;
      final arg_offset = 42;
      final arg_organization = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_url = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1alpha1/pages'),
        );
        pathOffset += 14;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['offset']!.first),
          unittest.equals(arg_offset),
        );
        unittest.expect(
          queryMap['organization']!.first,
          unittest.equals(arg_organization),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['url']!.first,
          unittest.equals(arg_url),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          offset: arg_offset,
          organization: arg_organization,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          url: arg_url,
          $fields: arg_$fields);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
          response as api
              .GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.FactCheckToolsApi(mock).pages;
      final arg_request =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
          response as api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage);
    });
  });
}
