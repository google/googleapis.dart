library googleapis_beta.factchecktools.v1alpha1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/factchecktools/v1alpha1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed5069() {
  var o =
      new core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview>();
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview());
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview());
  return o;
}

checkUnnamed5069(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(o[1]);
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim = 0;
buildGoogleFactcheckingFactchecktoolsV1alpha1Claim() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1Claim();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim < 3) {
    o.claimDate = "foo";
    o.claimReview = buildUnnamed5069();
    o.claimant = "foo";
    o.text = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(
    api.GoogleFactcheckingFactchecktoolsV1alpha1Claim o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim < 3) {
    unittest.expect(o.claimDate, unittest.equals('foo'));
    checkUnnamed5069(o.claimReview);
    unittest.expect(o.claimant, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Claim--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor = 0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor < 3) {
    o.imageUrl = "foo";
    o.jobTitle = "foo";
    o.name = "foo";
    o.sameAs = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor < 3) {
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.jobTitle, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sameAs, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating = 0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating < 3) {
    o.bestRating = 42;
    o.imageUrl = "foo";
    o.ratingValue = 42;
    o.textualRating = "foo";
    o.worstRating = 42;
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating < 3) {
    unittest.expect(o.bestRating, unittest.equals(42));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.ratingValue, unittest.equals(42));
    unittest.expect(o.textualRating, unittest.equals('foo'));
    unittest.expect(o.worstRating, unittest.equals(42));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview = 0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview < 3) {
    o.languageCode = "foo";
    o.publisher = buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher();
    o.reviewDate = "foo";
    o.textualRating = "foo";
    o.title = "foo";
    o.url = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(o.publisher);
    unittest.expect(o.reviewDate, unittest.equals('foo'));
    unittest.expect(o.textualRating, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor =
    0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor <
      3) {
    o.imageUrl = "foo";
    o.name = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor <
      3) {
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor--;
}

buildUnnamed5070() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup =
    0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup <
      3) {
    o.claimAppearances = buildUnnamed5070();
    o.claimAuthor = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
    o.claimDate = "foo";
    o.claimFirstAppearance = "foo";
    o.claimLocation = "foo";
    o.claimReviewed = "foo";
    o.rating = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
    o.url = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup <
      3) {
    checkUnnamed5070(o.claimAppearances);
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(o.claimAuthor);
    unittest.expect(o.claimDate, unittest.equals('foo'));
    unittest.expect(o.claimFirstAppearance, unittest.equals('foo'));
    unittest.expect(o.claimLocation, unittest.equals('foo'));
    unittest.expect(o.claimReviewed, unittest.equals('foo'));
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(o.rating);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup--;
}

buildUnnamed5071() {
  var o = new core
      .List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>();
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup());
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup());
  return o;
}

checkUnnamed5071(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage =
    0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage() {
  var o =
      new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage <
      3) {
    o.claimReviewAuthor =
        buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
    o.claimReviewMarkups = buildUnnamed5071();
    o.name = "foo";
    o.pageUrl = "foo";
    o.publishDate = "foo";
    o.versionId = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage <
      3) {
    checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(
        o.claimReviewAuthor);
    checkUnnamed5071(o.claimReviewMarkups);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageUrl, unittest.equals('foo'));
    unittest.expect(o.publishDate, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage--;
}

buildUnnamed5072() {
  var o = new core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1Claim>();
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1Claim());
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1Claim());
  return o;
}

checkUnnamed5072(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1Claim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse =
    0;
buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse() {
  var o = new api
      .GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse <
      3) {
    o.claims = buildUnnamed5072();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
    api.GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
        o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse <
      3) {
    checkUnnamed5072(o.claims);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse--;
}

buildUnnamed5073() {
  var o = new core.List<
      api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>();
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
  o.add(buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
  return o;
}

checkUnnamed5073(
    core.List<api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(o[0]);
  checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(o[1]);
}

core.int
    buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse =
    0;
buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse() {
  var o = new api
      .GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse <
      3) {
    o.claimReviewMarkupPages = buildUnnamed5073();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
    api.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
        o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse <
      3) {
    checkUnnamed5073(o.claimReviewMarkupPages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse--;
}

core.int buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher = 0;
buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher() {
  var o = new api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher();
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher < 3) {
    o.name = "foo";
    o.site = "foo";
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher--;
  return o;
}

checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(
    api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher o) {
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher++;
  if (buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.site, unittest.equals('foo'));
  }
  buildCounterGoogleFactcheckingFactchecktoolsV1alpha1Publisher--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

main() {
  unittest.group("obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1Claim",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1Claim();
      var od = new api.GoogleFactcheckingFactchecktoolsV1alpha1Claim.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1Claim(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor();
      var od =
          new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor.fromJson(
              o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating();
      var od =
          new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating.fromJson(
              o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimRating(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview();
      var od =
          new api.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview.fromJson(
              o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReview(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor();
      var od = new api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup();
      var od = new api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      var od = new api
              .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse();
      var od = new api
              .GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse();
      var od = new api
              .GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse.fromJson(
          o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
          od);
    });
  });

  unittest.group("obj-schema-GoogleFactcheckingFactchecktoolsV1alpha1Publisher",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleFactcheckingFactchecktoolsV1alpha1Publisher();
      var od =
          new api.GoogleFactcheckingFactchecktoolsV1alpha1Publisher.fromJson(
              o.toJson());
      checkGoogleFactcheckingFactchecktoolsV1alpha1Publisher(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("resource-ClaimsResourceApi", () {
    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ClaimsResourceApi res = new api.FactchecktoolsApi(mock).claims;
      var arg_maxAgeDays = 42;
      var arg_offset = 42;
      var arg_pageToken = "foo";
      var arg_reviewPublisherSiteFilter = "foo";
      var arg_pageSize = 42;
      var arg_query = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1alpha1/claims:search"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxAgeDays"].first),
            unittest.equals(arg_maxAgeDays));
        unittest.expect(core.int.parse(queryMap["offset"].first),
            unittest.equals(arg_offset));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["reviewPublisherSiteFilter"].first,
            unittest.equals(arg_reviewPublisherSiteFilter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(
              maxAgeDays: arg_maxAgeDays,
              offset: arg_offset,
              pageToken: arg_pageToken,
              reviewPublisherSiteFilter: arg_reviewPublisherSiteFilter,
              pageSize: arg_pageSize,
              query: arg_query,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse(
            response);
      })));
    });
  });

  unittest.group("resource-PagesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.PagesResourceApi res = new api.FactchecktoolsApi(mock).pages;
      var arg_request =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
            json);
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1alpha1/pages"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
            response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PagesResourceApi res = new api.FactchecktoolsApi(mock).pages;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PagesResourceApi res = new api.FactchecktoolsApi(mock).pages;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
            response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PagesResourceApi res = new api.FactchecktoolsApi(mock).pages;
      var arg_offset = 42;
      var arg_pageToken = "foo";
      var arg_organization = "foo";
      var arg_pageSize = 42;
      var arg_url = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1alpha1/pages"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["offset"].first),
            unittest.equals(arg_offset));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["organization"].first, unittest.equals(arg_organization));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              offset: arg_offset,
              pageToken: arg_pageToken,
              organization: arg_organization,
              pageSize: arg_pageSize,
              url: arg_url,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse(
            response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PagesResourceApi res = new api.FactchecktoolsApi(mock).pages;
      var arg_request =
          buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.fromJson(
            json);
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage(
            response);
      })));
    });
  });
}
