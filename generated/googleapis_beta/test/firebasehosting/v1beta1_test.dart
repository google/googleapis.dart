library googleapis_beta.firebasehosting.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/firebasehosting/v1beta1.dart' as api;

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

core.int buildCounterActingUser = 0;
buildActingUser() {
  var o = new api.ActingUser();
  buildCounterActingUser++;
  if (buildCounterActingUser < 3) {
    o.email = "foo";
    o.imageUrl = "foo";
  }
  buildCounterActingUser--;
  return o;
}

checkActingUser(api.ActingUser o) {
  buildCounterActingUser++;
  if (buildCounterActingUser < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
  }
  buildCounterActingUser--;
}

core.int buildCounterCertDnsChallenge = 0;
buildCertDnsChallenge() {
  var o = new api.CertDnsChallenge();
  buildCounterCertDnsChallenge++;
  if (buildCounterCertDnsChallenge < 3) {
    o.domainName = "foo";
    o.token = "foo";
  }
  buildCounterCertDnsChallenge--;
  return o;
}

checkCertDnsChallenge(api.CertDnsChallenge o) {
  buildCounterCertDnsChallenge++;
  if (buildCounterCertDnsChallenge < 3) {
    unittest.expect(o.domainName, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterCertDnsChallenge--;
}

core.int buildCounterCertHttpChallenge = 0;
buildCertHttpChallenge() {
  var o = new api.CertHttpChallenge();
  buildCounterCertHttpChallenge++;
  if (buildCounterCertHttpChallenge < 3) {
    o.path = "foo";
    o.token = "foo";
  }
  buildCounterCertHttpChallenge--;
  return o;
}

checkCertHttpChallenge(api.CertHttpChallenge o) {
  buildCounterCertHttpChallenge++;
  if (buildCounterCertHttpChallenge < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterCertHttpChallenge--;
}

core.int buildCounterCloudRunRewrite = 0;
buildCloudRunRewrite() {
  var o = new api.CloudRunRewrite();
  buildCounterCloudRunRewrite++;
  if (buildCounterCloudRunRewrite < 3) {
    o.region = "foo";
    o.serviceId = "foo";
  }
  buildCounterCloudRunRewrite--;
  return o;
}

checkCloudRunRewrite(api.CloudRunRewrite o) {
  buildCounterCloudRunRewrite++;
  if (buildCounterCloudRunRewrite < 3) {
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
  }
  buildCounterCloudRunRewrite--;
}

core.int buildCounterDomain = 0;
buildDomain() {
  var o = new api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.domainName = "foo";
    o.domainRedirect = buildDomainRedirect();
    o.provisioning = buildDomainProvisioning();
    o.site = "foo";
    o.status = "foo";
    o.updateTime = "foo";
  }
  buildCounterDomain--;
  return o;
}

checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.domainName, unittest.equals('foo'));
    checkDomainRedirect(o.domainRedirect);
    checkDomainProvisioning(o.provisioning);
    unittest.expect(o.site, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDomain--;
}

buildUnnamed4796() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4796(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4797() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4797(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4798() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4798(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDomainProvisioning = 0;
buildDomainProvisioning() {
  var o = new api.DomainProvisioning();
  buildCounterDomainProvisioning++;
  if (buildCounterDomainProvisioning < 3) {
    o.certChallengeDiscoveredTxt = buildUnnamed4796();
    o.certChallengeDns = buildCertDnsChallenge();
    o.certChallengeHttp = buildCertHttpChallenge();
    o.certStatus = "foo";
    o.discoveredIps = buildUnnamed4797();
    o.dnsFetchTime = "foo";
    o.dnsStatus = "foo";
    o.expectedIps = buildUnnamed4798();
  }
  buildCounterDomainProvisioning--;
  return o;
}

checkDomainProvisioning(api.DomainProvisioning o) {
  buildCounterDomainProvisioning++;
  if (buildCounterDomainProvisioning < 3) {
    checkUnnamed4796(o.certChallengeDiscoveredTxt);
    checkCertDnsChallenge(o.certChallengeDns);
    checkCertHttpChallenge(o.certChallengeHttp);
    unittest.expect(o.certStatus, unittest.equals('foo'));
    checkUnnamed4797(o.discoveredIps);
    unittest.expect(o.dnsFetchTime, unittest.equals('foo'));
    unittest.expect(o.dnsStatus, unittest.equals('foo'));
    checkUnnamed4798(o.expectedIps);
  }
  buildCounterDomainProvisioning--;
}

core.int buildCounterDomainRedirect = 0;
buildDomainRedirect() {
  var o = new api.DomainRedirect();
  buildCounterDomainRedirect++;
  if (buildCounterDomainRedirect < 3) {
    o.domainName = "foo";
    o.type = "foo";
  }
  buildCounterDomainRedirect--;
  return o;
}

checkDomainRedirect(api.DomainRedirect o) {
  buildCounterDomainRedirect++;
  if (buildCounterDomainRedirect < 3) {
    unittest.expect(o.domainName, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDomainRedirect--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed4799() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4799(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHeader = 0;
buildHeader() {
  var o = new api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.glob = "foo";
    o.headers = buildUnnamed4799();
  }
  buildCounterHeader--;
  return o;
}

checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(o.glob, unittest.equals('foo'));
    checkUnnamed4799(o.headers);
  }
  buildCounterHeader--;
}

buildUnnamed4800() {
  var o = new core.List<api.Domain>();
  o.add(buildDomain());
  o.add(buildDomain());
  return o;
}

checkUnnamed4800(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.int buildCounterListDomainsResponse = 0;
buildListDomainsResponse() {
  var o = new api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed4800();
    o.nextPageToken = "foo";
  }
  buildCounterListDomainsResponse--;
  return o;
}

checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed4800(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDomainsResponse--;
}

buildUnnamed4801() {
  var o = new core.List<api.Release>();
  o.add(buildRelease());
  o.add(buildRelease());
  return o;
}

checkUnnamed4801(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.int buildCounterListReleasesResponse = 0;
buildListReleasesResponse() {
  var o = new api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = "foo";
    o.releases = buildUnnamed4801();
  }
  buildCounterListReleasesResponse--;
  return o;
}

checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4801(o.releases);
  }
  buildCounterListReleasesResponse--;
}

buildUnnamed4802() {
  var o = new core.List<api.VersionFile>();
  o.add(buildVersionFile());
  o.add(buildVersionFile());
  return o;
}

checkUnnamed4802(core.List<api.VersionFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersionFile(o[0]);
  checkVersionFile(o[1]);
}

core.int buildCounterListVersionFilesResponse = 0;
buildListVersionFilesResponse() {
  var o = new api.ListVersionFilesResponse();
  buildCounterListVersionFilesResponse++;
  if (buildCounterListVersionFilesResponse < 3) {
    o.files = buildUnnamed4802();
    o.nextPageToken = "foo";
  }
  buildCounterListVersionFilesResponse--;
  return o;
}

checkListVersionFilesResponse(api.ListVersionFilesResponse o) {
  buildCounterListVersionFilesResponse++;
  if (buildCounterListVersionFilesResponse < 3) {
    checkUnnamed4802(o.files);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListVersionFilesResponse--;
}

buildUnnamed4803() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4803(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPopulateVersionFilesRequest = 0;
buildPopulateVersionFilesRequest() {
  var o = new api.PopulateVersionFilesRequest();
  buildCounterPopulateVersionFilesRequest++;
  if (buildCounterPopulateVersionFilesRequest < 3) {
    o.files = buildUnnamed4803();
  }
  buildCounterPopulateVersionFilesRequest--;
  return o;
}

checkPopulateVersionFilesRequest(api.PopulateVersionFilesRequest o) {
  buildCounterPopulateVersionFilesRequest++;
  if (buildCounterPopulateVersionFilesRequest < 3) {
    checkUnnamed4803(o.files);
  }
  buildCounterPopulateVersionFilesRequest--;
}

buildUnnamed4804() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4804(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPopulateVersionFilesResponse = 0;
buildPopulateVersionFilesResponse() {
  var o = new api.PopulateVersionFilesResponse();
  buildCounterPopulateVersionFilesResponse++;
  if (buildCounterPopulateVersionFilesResponse < 3) {
    o.uploadRequiredHashes = buildUnnamed4804();
    o.uploadUrl = "foo";
  }
  buildCounterPopulateVersionFilesResponse--;
  return o;
}

checkPopulateVersionFilesResponse(api.PopulateVersionFilesResponse o) {
  buildCounterPopulateVersionFilesResponse++;
  if (buildCounterPopulateVersionFilesResponse < 3) {
    checkUnnamed4804(o.uploadRequiredHashes);
    unittest.expect(o.uploadUrl, unittest.equals('foo'));
  }
  buildCounterPopulateVersionFilesResponse--;
}

core.int buildCounterRedirect = 0;
buildRedirect() {
  var o = new api.Redirect();
  buildCounterRedirect++;
  if (buildCounterRedirect < 3) {
    o.glob = "foo";
    o.location = "foo";
    o.statusCode = 42;
  }
  buildCounterRedirect--;
  return o;
}

checkRedirect(api.Redirect o) {
  buildCounterRedirect++;
  if (buildCounterRedirect < 3) {
    unittest.expect(o.glob, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.statusCode, unittest.equals(42));
  }
  buildCounterRedirect--;
}

core.int buildCounterRelease = 0;
buildRelease() {
  var o = new api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.message = "foo";
    o.name = "foo";
    o.releaseTime = "foo";
    o.releaseUser = buildActingUser();
    o.type = "foo";
    o.version = buildVersion();
  }
  buildCounterRelease--;
  return o;
}

checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.releaseTime, unittest.equals('foo'));
    checkActingUser(o.releaseUser);
    unittest.expect(o.type, unittest.equals('foo'));
    checkVersion(o.version);
  }
  buildCounterRelease--;
}

core.int buildCounterRewrite = 0;
buildRewrite() {
  var o = new api.Rewrite();
  buildCounterRewrite++;
  if (buildCounterRewrite < 3) {
    o.dynamicLinks = true;
    o.function = "foo";
    o.glob = "foo";
    o.path = "foo";
    o.run = buildCloudRunRewrite();
  }
  buildCounterRewrite--;
  return o;
}

checkRewrite(api.Rewrite o) {
  buildCounterRewrite++;
  if (buildCounterRewrite < 3) {
    unittest.expect(o.dynamicLinks, unittest.isTrue);
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.glob, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    checkCloudRunRewrite(o.run);
  }
  buildCounterRewrite--;
}

buildUnnamed4805() {
  var o = new core.List<api.Header>();
  o.add(buildHeader());
  o.add(buildHeader());
  return o;
}

checkUnnamed4805(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

buildUnnamed4806() {
  var o = new core.List<api.Redirect>();
  o.add(buildRedirect());
  o.add(buildRedirect());
  return o;
}

checkUnnamed4806(core.List<api.Redirect> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRedirect(o[0]);
  checkRedirect(o[1]);
}

buildUnnamed4807() {
  var o = new core.List<api.Rewrite>();
  o.add(buildRewrite());
  o.add(buildRewrite());
  return o;
}

checkUnnamed4807(core.List<api.Rewrite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRewrite(o[0]);
  checkRewrite(o[1]);
}

core.int buildCounterServingConfig = 0;
buildServingConfig() {
  var o = new api.ServingConfig();
  buildCounterServingConfig++;
  if (buildCounterServingConfig < 3) {
    o.appAssociation = "foo";
    o.cleanUrls = true;
    o.headers = buildUnnamed4805();
    o.redirects = buildUnnamed4806();
    o.rewrites = buildUnnamed4807();
    o.trailingSlashBehavior = "foo";
  }
  buildCounterServingConfig--;
  return o;
}

checkServingConfig(api.ServingConfig o) {
  buildCounterServingConfig++;
  if (buildCounterServingConfig < 3) {
    unittest.expect(o.appAssociation, unittest.equals('foo'));
    unittest.expect(o.cleanUrls, unittest.isTrue);
    checkUnnamed4805(o.headers);
    checkUnnamed4806(o.redirects);
    checkUnnamed4807(o.rewrites);
    unittest.expect(o.trailingSlashBehavior, unittest.equals('foo'));
  }
  buildCounterServingConfig--;
}

core.int buildCounterSiteConfig = 0;
buildSiteConfig() {
  var o = new api.SiteConfig();
  buildCounterSiteConfig++;
  if (buildCounterSiteConfig < 3) {
    o.maxVersions = "foo";
  }
  buildCounterSiteConfig--;
  return o;
}

checkSiteConfig(api.SiteConfig o) {
  buildCounterSiteConfig++;
  if (buildCounterSiteConfig < 3) {
    unittest.expect(o.maxVersions, unittest.equals('foo'));
  }
  buildCounterSiteConfig--;
}

buildUnnamed4808() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4808(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterVersion = 0;
buildVersion() {
  var o = new api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.config = buildServingConfig();
    o.createTime = "foo";
    o.createUser = buildActingUser();
    o.deleteTime = "foo";
    o.deleteUser = buildActingUser();
    o.fileCount = "foo";
    o.finalizeTime = "foo";
    o.finalizeUser = buildActingUser();
    o.labels = buildUnnamed4808();
    o.name = "foo";
    o.status = "foo";
    o.versionBytes = "foo";
  }
  buildCounterVersion--;
  return o;
}

checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    checkServingConfig(o.config);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkActingUser(o.createUser);
    unittest.expect(o.deleteTime, unittest.equals('foo'));
    checkActingUser(o.deleteUser);
    unittest.expect(o.fileCount, unittest.equals('foo'));
    unittest.expect(o.finalizeTime, unittest.equals('foo'));
    checkActingUser(o.finalizeUser);
    checkUnnamed4808(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.versionBytes, unittest.equals('foo'));
  }
  buildCounterVersion--;
}

core.int buildCounterVersionFile = 0;
buildVersionFile() {
  var o = new api.VersionFile();
  buildCounterVersionFile++;
  if (buildCounterVersionFile < 3) {
    o.hash = "foo";
    o.path = "foo";
    o.status = "foo";
  }
  buildCounterVersionFile--;
  return o;
}

checkVersionFile(api.VersionFile o) {
  buildCounterVersionFile++;
  if (buildCounterVersionFile < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterVersionFile--;
}

main() {
  unittest.group("obj-schema-ActingUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildActingUser();
      var od = new api.ActingUser.fromJson(o.toJson());
      checkActingUser(od);
    });
  });

  unittest.group("obj-schema-CertDnsChallenge", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertDnsChallenge();
      var od = new api.CertDnsChallenge.fromJson(o.toJson());
      checkCertDnsChallenge(od);
    });
  });

  unittest.group("obj-schema-CertHttpChallenge", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertHttpChallenge();
      var od = new api.CertHttpChallenge.fromJson(o.toJson());
      checkCertHttpChallenge(od);
    });
  });

  unittest.group("obj-schema-CloudRunRewrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudRunRewrite();
      var od = new api.CloudRunRewrite.fromJson(o.toJson());
      checkCloudRunRewrite(od);
    });
  });

  unittest.group("obj-schema-Domain", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomain();
      var od = new api.Domain.fromJson(o.toJson());
      checkDomain(od);
    });
  });

  unittest.group("obj-schema-DomainProvisioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainProvisioning();
      var od = new api.DomainProvisioning.fromJson(o.toJson());
      checkDomainProvisioning(od);
    });
  });

  unittest.group("obj-schema-DomainRedirect", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainRedirect();
      var od = new api.DomainRedirect.fromJson(o.toJson());
      checkDomainRedirect(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Header", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeader();
      var od = new api.Header.fromJson(o.toJson());
      checkHeader(od);
    });
  });

  unittest.group("obj-schema-ListDomainsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDomainsResponse();
      var od = new api.ListDomainsResponse.fromJson(o.toJson());
      checkListDomainsResponse(od);
    });
  });

  unittest.group("obj-schema-ListReleasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReleasesResponse();
      var od = new api.ListReleasesResponse.fromJson(o.toJson());
      checkListReleasesResponse(od);
    });
  });

  unittest.group("obj-schema-ListVersionFilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVersionFilesResponse();
      var od = new api.ListVersionFilesResponse.fromJson(o.toJson());
      checkListVersionFilesResponse(od);
    });
  });

  unittest.group("obj-schema-PopulateVersionFilesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPopulateVersionFilesRequest();
      var od = new api.PopulateVersionFilesRequest.fromJson(o.toJson());
      checkPopulateVersionFilesRequest(od);
    });
  });

  unittest.group("obj-schema-PopulateVersionFilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPopulateVersionFilesResponse();
      var od = new api.PopulateVersionFilesResponse.fromJson(o.toJson());
      checkPopulateVersionFilesResponse(od);
    });
  });

  unittest.group("obj-schema-Redirect", () {
    unittest.test("to-json--from-json", () {
      var o = buildRedirect();
      var od = new api.Redirect.fromJson(o.toJson());
      checkRedirect(od);
    });
  });

  unittest.group("obj-schema-Release", () {
    unittest.test("to-json--from-json", () {
      var o = buildRelease();
      var od = new api.Release.fromJson(o.toJson());
      checkRelease(od);
    });
  });

  unittest.group("obj-schema-Rewrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildRewrite();
      var od = new api.Rewrite.fromJson(o.toJson());
      checkRewrite(od);
    });
  });

  unittest.group("obj-schema-ServingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildServingConfig();
      var od = new api.ServingConfig.fromJson(o.toJson());
      checkServingConfig(od);
    });
  });

  unittest.group("obj-schema-SiteConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSiteConfig();
      var od = new api.SiteConfig.fromJson(o.toJson());
      checkSiteConfig(od);
    });
  });

  unittest.group("obj-schema-Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersion();
      var od = new api.Version.fromJson(o.toJson());
      checkVersion(od);
    });
  });

  unittest.group("obj-schema-VersionFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersionFile();
      var od = new api.VersionFile.fromJson(o.toJson());
      checkVersionFile(od);
    });
  });

  unittest.group("resource-SitesResourceApi", () {
    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.FirebasehostingApi(mock).sites;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildSiteConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteConfig(response);
      })));
    });

    unittest.test("method--updateConfig", () {
      var mock = new HttpServerMock();
      api.SitesResourceApi res = new api.FirebasehostingApi(mock).sites;
      var arg_request = buildSiteConfig();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SiteConfig.fromJson(json);
        checkSiteConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSiteConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateConfig(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSiteConfig(response);
      })));
    });
  });

  unittest.group("resource-SitesDomainsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SitesDomainsResourceApi res =
          new api.FirebasehostingApi(mock).sites.domains;
      var arg_request = buildDomain();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Domain.fromJson(json);
        checkDomain(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildDomain());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomain(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SitesDomainsResourceApi res =
          new api.FirebasehostingApi(mock).sites.domains;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SitesDomainsResourceApi res =
          new api.FirebasehostingApi(mock).sites.domains;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildDomain());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomain(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SitesDomainsResourceApi res =
          new api.FirebasehostingApi(mock).sites.domains;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.SitesDomainsResourceApi res =
          new api.FirebasehostingApi(mock).sites.domains;
      var arg_request = buildDomain();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Domain.fromJson(json);
        checkDomain(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildDomain());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomain(response);
      })));
    });
  });

  unittest.group("resource-SitesReleasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SitesReleasesResourceApi res =
          new api.FirebasehostingApi(mock).sites.releases;
      var arg_request = buildRelease();
      var arg_parent = "foo";
      var arg_versionName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Release.fromJson(json);
        checkRelease(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["versionName"].first, unittest.equals(arg_versionName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRelease());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              versionName: arg_versionName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRelease(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SitesReleasesResourceApi res =
          new api.FirebasehostingApi(mock).sites.releases;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListReleasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReleasesResponse(response);
      })));
    });
  });

  unittest.group("resource-SitesVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SitesVersionsResourceApi res =
          new api.FirebasehostingApi(mock).sites.versions;
      var arg_request = buildVersion();
      var arg_parent = "foo";
      var arg_sizeBytes = "foo";
      var arg_versionId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["sizeBytes"].first, unittest.equals(arg_sizeBytes));
        unittest.expect(
            queryMap["versionId"].first, unittest.equals(arg_versionId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              sizeBytes: arg_sizeBytes,
              versionId: arg_versionId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SitesVersionsResourceApi res =
          new api.FirebasehostingApi(mock).sites.versions;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.SitesVersionsResourceApi res =
          new api.FirebasehostingApi(mock).sites.versions;
      var arg_request = buildVersion();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--populateFiles", () {
      var mock = new HttpServerMock();
      api.SitesVersionsResourceApi res =
          new api.FirebasehostingApi(mock).sites.versions;
      var arg_request = buildPopulateVersionFilesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PopulateVersionFilesRequest.fromJson(json);
        checkPopulateVersionFilesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildPopulateVersionFilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .populateFiles(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPopulateVersionFilesResponse(response);
      })));
    });
  });

  unittest.group("resource-SitesVersionsFilesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SitesVersionsFilesResourceApi res =
          new api.FirebasehostingApi(mock).sites.versions.files;
      var arg_parent = "foo";
      var arg_status = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVersionFilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              status: arg_status,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVersionFilesResponse(response);
      })));
    });
  });
}
