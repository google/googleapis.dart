// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/developerconnect/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterAccountConnector = 0;
api.AccountConnector buildAccountConnector() {
  final o = api.AccountConnector();
  buildCounterAccountConnector++;
  if (buildCounterAccountConnector < 3) {
    o.annotations = buildUnnamed0();
    o.createTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.oauthStartUri = 'foo';
    o.providerOauthConfig = buildProviderOAuthConfig();
    o.updateTime = 'foo';
  }
  buildCounterAccountConnector--;
  return o;
}

void checkAccountConnector(api.AccountConnector o) {
  buildCounterAccountConnector++;
  if (buildCounterAccountConnector < 3) {
    checkUnnamed0(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauthStartUri!,
      unittest.equals('foo'),
    );
    checkProviderOAuthConfig(o.providerOauthConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountConnector--;
}

core.int buildCounterAppHubWorkload = 0;
api.AppHubWorkload buildAppHubWorkload() {
  final o = api.AppHubWorkload();
  buildCounterAppHubWorkload++;
  if (buildCounterAppHubWorkload < 3) {
    o.criticality = 'foo';
    o.environment = 'foo';
    o.workload = 'foo';
  }
  buildCounterAppHubWorkload--;
  return o;
}

void checkAppHubWorkload(api.AppHubWorkload o) {
  buildCounterAppHubWorkload++;
  if (buildCounterAppHubWorkload < 3) {
    unittest.expect(
      o.criticality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workload!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppHubWorkload--;
}

core.int buildCounterArtifactConfig = 0;
api.ArtifactConfig buildArtifactConfig() {
  final o = api.ArtifactConfig();
  buildCounterArtifactConfig++;
  if (buildCounterArtifactConfig < 3) {
    o.googleArtifactAnalysis = buildGoogleArtifactAnalysis();
    o.googleArtifactRegistry = buildGoogleArtifactRegistry();
    o.uri = 'foo';
  }
  buildCounterArtifactConfig--;
  return o;
}

void checkArtifactConfig(api.ArtifactConfig o) {
  buildCounterArtifactConfig++;
  if (buildCounterArtifactConfig < 3) {
    checkGoogleArtifactAnalysis(o.googleArtifactAnalysis!);
    checkGoogleArtifactRegistry(o.googleArtifactRegistry!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterArtifactConfig--;
}

core.int buildCounterBitbucketCloudConfig = 0;
api.BitbucketCloudConfig buildBitbucketCloudConfig() {
  final o = api.BitbucketCloudConfig();
  buildCounterBitbucketCloudConfig++;
  if (buildCounterBitbucketCloudConfig < 3) {
    o.authorizerCredential = buildUserCredential();
    o.readAuthorizerCredential = buildUserCredential();
    o.webhookSecretSecretVersion = 'foo';
    o.workspace = 'foo';
  }
  buildCounterBitbucketCloudConfig--;
  return o;
}

void checkBitbucketCloudConfig(api.BitbucketCloudConfig o) {
  buildCounterBitbucketCloudConfig++;
  if (buildCounterBitbucketCloudConfig < 3) {
    checkUserCredential(o.authorizerCredential!);
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspace!,
      unittest.equals('foo'),
    );
  }
  buildCounterBitbucketCloudConfig--;
}

core.int buildCounterBitbucketDataCenterConfig = 0;
api.BitbucketDataCenterConfig buildBitbucketDataCenterConfig() {
  final o = api.BitbucketDataCenterConfig();
  buildCounterBitbucketDataCenterConfig++;
  if (buildCounterBitbucketDataCenterConfig < 3) {
    o.authorizerCredential = buildUserCredential();
    o.hostUri = 'foo';
    o.readAuthorizerCredential = buildUserCredential();
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCaCertificate = 'foo';
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterBitbucketDataCenterConfig--;
  return o;
}

void checkBitbucketDataCenterConfig(api.BitbucketDataCenterConfig o) {
  buildCounterBitbucketDataCenterConfig++;
  if (buildCounterBitbucketDataCenterConfig < 3) {
    checkUserCredential(o.authorizerCredential!);
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(
      o.serverVersion!,
      unittest.equals('foo'),
    );
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterBitbucketDataCenterConfig--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.annotations = buildUnnamed2();
    o.bitbucketCloudConfig = buildBitbucketCloudConfig();
    o.bitbucketDataCenterConfig = buildBitbucketDataCenterConfig();
    o.createTime = 'foo';
    o.cryptoKeyConfig = buildCryptoKeyConfig();
    o.deleteTime = 'foo';
    o.disabled = true;
    o.etag = 'foo';
    o.gitProxyConfig = buildGitProxyConfig();
    o.githubConfig = buildGitHubConfig();
    o.githubEnterpriseConfig = buildGitHubEnterpriseConfig();
    o.gitlabConfig = buildGitLabConfig();
    o.gitlabEnterpriseConfig = buildGitLabEnterpriseConfig();
    o.installationState = buildInstallationState();
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.reconciling = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkUnnamed2(o.annotations!);
    checkBitbucketCloudConfig(o.bitbucketCloudConfig!);
    checkBitbucketDataCenterConfig(o.bitbucketDataCenterConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkCryptoKeyConfig(o.cryptoKeyConfig!);
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGitProxyConfig(o.gitProxyConfig!);
    checkGitHubConfig(o.githubConfig!);
    checkGitHubEnterpriseConfig(o.githubEnterpriseConfig!);
    checkGitLabConfig(o.gitlabConfig!);
    checkGitLabEnterpriseConfig(o.gitlabEnterpriseConfig!);
    checkInstallationState(o.installationState!);
    checkUnnamed3(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnection--;
}

core.int buildCounterCryptoKeyConfig = 0;
api.CryptoKeyConfig buildCryptoKeyConfig() {
  final o = api.CryptoKeyConfig();
  buildCounterCryptoKeyConfig++;
  if (buildCounterCryptoKeyConfig < 3) {
    o.keyReference = 'foo';
  }
  buildCounterCryptoKeyConfig--;
  return o;
}

void checkCryptoKeyConfig(api.CryptoKeyConfig o) {
  buildCounterCryptoKeyConfig++;
  if (buildCounterCryptoKeyConfig < 3) {
    unittest.expect(
      o.keyReference!,
      unittest.equals('foo'),
    );
  }
  buildCounterCryptoKeyConfig--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExchangeError = 0;
api.ExchangeError buildExchangeError() {
  final o = api.ExchangeError();
  buildCounterExchangeError++;
  if (buildCounterExchangeError < 3) {
    o.code = 'foo';
    o.description = 'foo';
  }
  buildCounterExchangeError--;
  return o;
}

void checkExchangeError(api.ExchangeError o) {
  buildCounterExchangeError++;
  if (buildCounterExchangeError < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterExchangeError--;
}

core.int buildCounterFetchAccessTokenRequest = 0;
api.FetchAccessTokenRequest buildFetchAccessTokenRequest() {
  final o = api.FetchAccessTokenRequest();
  buildCounterFetchAccessTokenRequest++;
  if (buildCounterFetchAccessTokenRequest < 3) {}
  buildCounterFetchAccessTokenRequest--;
  return o;
}

void checkFetchAccessTokenRequest(api.FetchAccessTokenRequest o) {
  buildCounterFetchAccessTokenRequest++;
  if (buildCounterFetchAccessTokenRequest < 3) {}
  buildCounterFetchAccessTokenRequest--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterFetchAccessTokenResponse = 0;
api.FetchAccessTokenResponse buildFetchAccessTokenResponse() {
  final o = api.FetchAccessTokenResponse();
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    o.exchangeError = buildExchangeError();
    o.expirationTime = 'foo';
    o.scopes = buildUnnamed4();
    o.token = 'foo';
  }
  buildCounterFetchAccessTokenResponse--;
  return o;
}

void checkFetchAccessTokenResponse(api.FetchAccessTokenResponse o) {
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    checkExchangeError(o.exchangeError!);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.scopes!);
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchAccessTokenResponse--;
}

core.List<api.Installation> buildUnnamed5() => [
      buildInstallation(),
      buildInstallation(),
    ];

void checkUnnamed5(core.List<api.Installation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstallation(o[0]);
  checkInstallation(o[1]);
}

core.int buildCounterFetchGitHubInstallationsResponse = 0;
api.FetchGitHubInstallationsResponse buildFetchGitHubInstallationsResponse() {
  final o = api.FetchGitHubInstallationsResponse();
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    o.installations = buildUnnamed5();
  }
  buildCounterFetchGitHubInstallationsResponse--;
  return o;
}

void checkFetchGitHubInstallationsResponse(
    api.FetchGitHubInstallationsResponse o) {
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    checkUnnamed5(o.installations!);
  }
  buildCounterFetchGitHubInstallationsResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterFetchGitRefsResponse = 0;
api.FetchGitRefsResponse buildFetchGitRefsResponse() {
  final o = api.FetchGitRefsResponse();
  buildCounterFetchGitRefsResponse++;
  if (buildCounterFetchGitRefsResponse < 3) {
    o.nextPageToken = 'foo';
    o.refNames = buildUnnamed6();
  }
  buildCounterFetchGitRefsResponse--;
  return o;
}

void checkFetchGitRefsResponse(api.FetchGitRefsResponse o) {
  buildCounterFetchGitRefsResponse++;
  if (buildCounterFetchGitRefsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.refNames!);
  }
  buildCounterFetchGitRefsResponse--;
}

core.List<api.LinkableGitRepository> buildUnnamed7() => [
      buildLinkableGitRepository(),
      buildLinkableGitRepository(),
    ];

void checkUnnamed7(core.List<api.LinkableGitRepository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLinkableGitRepository(o[0]);
  checkLinkableGitRepository(o[1]);
}

core.int buildCounterFetchLinkableGitRepositoriesResponse = 0;
api.FetchLinkableGitRepositoriesResponse
    buildFetchLinkableGitRepositoriesResponse() {
  final o = api.FetchLinkableGitRepositoriesResponse();
  buildCounterFetchLinkableGitRepositoriesResponse++;
  if (buildCounterFetchLinkableGitRepositoriesResponse < 3) {
    o.linkableGitRepositories = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchLinkableGitRepositoriesResponse--;
  return o;
}

void checkFetchLinkableGitRepositoriesResponse(
    api.FetchLinkableGitRepositoriesResponse o) {
  buildCounterFetchLinkableGitRepositoriesResponse++;
  if (buildCounterFetchLinkableGitRepositoriesResponse < 3) {
    checkUnnamed7(o.linkableGitRepositories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchLinkableGitRepositoriesResponse--;
}

core.int buildCounterFetchReadTokenRequest = 0;
api.FetchReadTokenRequest buildFetchReadTokenRequest() {
  final o = api.FetchReadTokenRequest();
  buildCounterFetchReadTokenRequest++;
  if (buildCounterFetchReadTokenRequest < 3) {}
  buildCounterFetchReadTokenRequest--;
  return o;
}

void checkFetchReadTokenRequest(api.FetchReadTokenRequest o) {
  buildCounterFetchReadTokenRequest++;
  if (buildCounterFetchReadTokenRequest < 3) {}
  buildCounterFetchReadTokenRequest--;
}

core.int buildCounterFetchReadTokenResponse = 0;
api.FetchReadTokenResponse buildFetchReadTokenResponse() {
  final o = api.FetchReadTokenResponse();
  buildCounterFetchReadTokenResponse++;
  if (buildCounterFetchReadTokenResponse < 3) {
    o.expirationTime = 'foo';
    o.gitUsername = 'foo';
    o.token = 'foo';
  }
  buildCounterFetchReadTokenResponse--;
  return o;
}

void checkFetchReadTokenResponse(api.FetchReadTokenResponse o) {
  buildCounterFetchReadTokenResponse++;
  if (buildCounterFetchReadTokenResponse < 3) {
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gitUsername!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchReadTokenResponse--;
}

core.int buildCounterFetchReadWriteTokenRequest = 0;
api.FetchReadWriteTokenRequest buildFetchReadWriteTokenRequest() {
  final o = api.FetchReadWriteTokenRequest();
  buildCounterFetchReadWriteTokenRequest++;
  if (buildCounterFetchReadWriteTokenRequest < 3) {}
  buildCounterFetchReadWriteTokenRequest--;
  return o;
}

void checkFetchReadWriteTokenRequest(api.FetchReadWriteTokenRequest o) {
  buildCounterFetchReadWriteTokenRequest++;
  if (buildCounterFetchReadWriteTokenRequest < 3) {}
  buildCounterFetchReadWriteTokenRequest--;
}

core.int buildCounterFetchReadWriteTokenResponse = 0;
api.FetchReadWriteTokenResponse buildFetchReadWriteTokenResponse() {
  final o = api.FetchReadWriteTokenResponse();
  buildCounterFetchReadWriteTokenResponse++;
  if (buildCounterFetchReadWriteTokenResponse < 3) {
    o.expirationTime = 'foo';
    o.gitUsername = 'foo';
    o.token = 'foo';
  }
  buildCounterFetchReadWriteTokenResponse--;
  return o;
}

void checkFetchReadWriteTokenResponse(api.FetchReadWriteTokenResponse o) {
  buildCounterFetchReadWriteTokenResponse++;
  if (buildCounterFetchReadWriteTokenResponse < 3) {
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gitUsername!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchReadWriteTokenResponse--;
}

core.int buildCounterGKEWorkload = 0;
api.GKEWorkload buildGKEWorkload() {
  final o = api.GKEWorkload();
  buildCounterGKEWorkload++;
  if (buildCounterGKEWorkload < 3) {
    o.cluster = 'foo';
    o.deployment = 'foo';
  }
  buildCounterGKEWorkload--;
  return o;
}

void checkGKEWorkload(api.GKEWorkload o) {
  buildCounterGKEWorkload++;
  if (buildCounterGKEWorkload < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployment!,
      unittest.equals('foo'),
    );
  }
  buildCounterGKEWorkload--;
}

core.int buildCounterGitHubConfig = 0;
api.GitHubConfig buildGitHubConfig() {
  final o = api.GitHubConfig();
  buildCounterGitHubConfig++;
  if (buildCounterGitHubConfig < 3) {
    o.appInstallationId = 'foo';
    o.authorizerCredential = buildOAuthCredential();
    o.githubApp = 'foo';
    o.installationUri = 'foo';
  }
  buildCounterGitHubConfig--;
  return o;
}

void checkGitHubConfig(api.GitHubConfig o) {
  buildCounterGitHubConfig++;
  if (buildCounterGitHubConfig < 3) {
    unittest.expect(
      o.appInstallationId!,
      unittest.equals('foo'),
    );
    checkOAuthCredential(o.authorizerCredential!);
    unittest.expect(
      o.githubApp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitHubConfig--;
}

core.int buildCounterGitHubEnterpriseConfig = 0;
api.GitHubEnterpriseConfig buildGitHubEnterpriseConfig() {
  final o = api.GitHubEnterpriseConfig();
  buildCounterGitHubEnterpriseConfig++;
  if (buildCounterGitHubEnterpriseConfig < 3) {
    o.appId = 'foo';
    o.appInstallationId = 'foo';
    o.appSlug = 'foo';
    o.hostUri = 'foo';
    o.installationUri = 'foo';
    o.privateKeySecretVersion = 'foo';
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCaCertificate = 'foo';
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterGitHubEnterpriseConfig--;
  return o;
}

void checkGitHubEnterpriseConfig(api.GitHubEnterpriseConfig o) {
  buildCounterGitHubEnterpriseConfig++;
  if (buildCounterGitHubEnterpriseConfig < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstallationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appSlug!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeySecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverVersion!,
      unittest.equals('foo'),
    );
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitHubEnterpriseConfig--;
}

core.int buildCounterGitLabConfig = 0;
api.GitLabConfig buildGitLabConfig() {
  final o = api.GitLabConfig();
  buildCounterGitLabConfig++;
  if (buildCounterGitLabConfig < 3) {
    o.authorizerCredential = buildUserCredential();
    o.readAuthorizerCredential = buildUserCredential();
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterGitLabConfig--;
  return o;
}

void checkGitLabConfig(api.GitLabConfig o) {
  buildCounterGitLabConfig++;
  if (buildCounterGitLabConfig < 3) {
    checkUserCredential(o.authorizerCredential!);
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitLabConfig--;
}

core.int buildCounterGitLabEnterpriseConfig = 0;
api.GitLabEnterpriseConfig buildGitLabEnterpriseConfig() {
  final o = api.GitLabEnterpriseConfig();
  buildCounterGitLabEnterpriseConfig++;
  if (buildCounterGitLabEnterpriseConfig < 3) {
    o.authorizerCredential = buildUserCredential();
    o.hostUri = 'foo';
    o.readAuthorizerCredential = buildUserCredential();
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCaCertificate = 'foo';
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterGitLabEnterpriseConfig--;
  return o;
}

void checkGitLabEnterpriseConfig(api.GitLabEnterpriseConfig o) {
  buildCounterGitLabEnterpriseConfig++;
  if (buildCounterGitLabEnterpriseConfig < 3) {
    checkUserCredential(o.authorizerCredential!);
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(
      o.serverVersion!,
      unittest.equals('foo'),
    );
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitLabEnterpriseConfig--;
}

core.int buildCounterGitProxyConfig = 0;
api.GitProxyConfig buildGitProxyConfig() {
  final o = api.GitProxyConfig();
  buildCounterGitProxyConfig++;
  if (buildCounterGitProxyConfig < 3) {
    o.enabled = true;
  }
  buildCounterGitProxyConfig--;
  return o;
}

void checkGitProxyConfig(api.GitProxyConfig o) {
  buildCounterGitProxyConfig++;
  if (buildCounterGitProxyConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGitProxyConfig--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGitRepositoryLink = 0;
api.GitRepositoryLink buildGitRepositoryLink() {
  final o = api.GitRepositoryLink();
  buildCounterGitRepositoryLink++;
  if (buildCounterGitRepositoryLink < 3) {
    o.annotations = buildUnnamed8();
    o.cloneUri = 'foo';
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.etag = 'foo';
    o.gitProxyUri = 'foo';
    o.labels = buildUnnamed9();
    o.name = 'foo';
    o.reconciling = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.webhookId = 'foo';
  }
  buildCounterGitRepositoryLink--;
  return o;
}

void checkGitRepositoryLink(api.GitRepositoryLink o) {
  buildCounterGitRepositoryLink++;
  if (buildCounterGitRepositoryLink < 3) {
    checkUnnamed8(o.annotations!);
    unittest.expect(
      o.cloneUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gitProxyUri!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitRepositoryLink--;
}

core.int buildCounterGoogleArtifactAnalysis = 0;
api.GoogleArtifactAnalysis buildGoogleArtifactAnalysis() {
  final o = api.GoogleArtifactAnalysis();
  buildCounterGoogleArtifactAnalysis++;
  if (buildCounterGoogleArtifactAnalysis < 3) {
    o.projectId = 'foo';
  }
  buildCounterGoogleArtifactAnalysis--;
  return o;
}

void checkGoogleArtifactAnalysis(api.GoogleArtifactAnalysis o) {
  buildCounterGoogleArtifactAnalysis++;
  if (buildCounterGoogleArtifactAnalysis < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleArtifactAnalysis--;
}

core.int buildCounterGoogleArtifactRegistry = 0;
api.GoogleArtifactRegistry buildGoogleArtifactRegistry() {
  final o = api.GoogleArtifactRegistry();
  buildCounterGoogleArtifactRegistry++;
  if (buildCounterGoogleArtifactRegistry < 3) {
    o.artifactRegistryPackage = 'foo';
    o.projectId = 'foo';
  }
  buildCounterGoogleArtifactRegistry--;
  return o;
}

void checkGoogleArtifactRegistry(api.GoogleArtifactRegistry o) {
  buildCounterGoogleArtifactRegistry++;
  if (buildCounterGoogleArtifactRegistry < 3) {
    unittest.expect(
      o.artifactRegistryPackage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleArtifactRegistry--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed11() => [
      buildUnnamed10(),
      buildUnnamed10(),
    ];

void checkUnnamed11(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o[0]);
  checkUnnamed10(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed11();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.ArtifactConfig> buildUnnamed13() => [
      buildArtifactConfig(),
      buildArtifactConfig(),
    ];

void checkUnnamed13(core.List<api.ArtifactConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactConfig(o[0]);
  checkArtifactConfig(o[1]);
}

core.List<api.Status> buildUnnamed14() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed14(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.RuntimeConfig> buildUnnamed16() => [
      buildRuntimeConfig(),
      buildRuntimeConfig(),
    ];

void checkUnnamed16(core.List<api.RuntimeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeConfig(o[0]);
  checkRuntimeConfig(o[1]);
}

core.int buildCounterInsightsConfig = 0;
api.InsightsConfig buildInsightsConfig() {
  final o = api.InsightsConfig();
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    o.annotations = buildUnnamed12();
    o.appHubApplication = 'foo';
    o.artifactConfigs = buildUnnamed13();
    o.createTime = 'foo';
    o.errors = buildUnnamed14();
    o.labels = buildUnnamed15();
    o.name = 'foo';
    o.reconciling = true;
    o.runtimeConfigs = buildUnnamed16();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInsightsConfig--;
  return o;
}

void checkInsightsConfig(api.InsightsConfig o) {
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    checkUnnamed12(o.annotations!);
    unittest.expect(
      o.appHubApplication!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.artifactConfigs!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.errors!);
    checkUnnamed15(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed16(o.runtimeConfigs!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsightsConfig--;
}

core.int buildCounterInstallation = 0;
api.Installation buildInstallation() {
  final o = api.Installation();
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterInstallation--;
  return o;
}

void checkInstallation(api.Installation o) {
  buildCounterInstallation++;
  if (buildCounterInstallation < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstallation--;
}

core.int buildCounterInstallationState = 0;
api.InstallationState buildInstallationState() {
  final o = api.InstallationState();
  buildCounterInstallationState++;
  if (buildCounterInstallationState < 3) {
    o.actionUri = 'foo';
    o.message = 'foo';
    o.stage = 'foo';
  }
  buildCounterInstallationState--;
  return o;
}

void checkInstallationState(api.InstallationState o) {
  buildCounterInstallationState++;
  if (buildCounterInstallationState < 3) {
    unittest.expect(
      o.actionUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stage!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstallationState--;
}

core.int buildCounterLinkableGitRepository = 0;
api.LinkableGitRepository buildLinkableGitRepository() {
  final o = api.LinkableGitRepository();
  buildCounterLinkableGitRepository++;
  if (buildCounterLinkableGitRepository < 3) {
    o.cloneUri = 'foo';
  }
  buildCounterLinkableGitRepository--;
  return o;
}

void checkLinkableGitRepository(api.LinkableGitRepository o) {
  buildCounterLinkableGitRepository++;
  if (buildCounterLinkableGitRepository < 3) {
    unittest.expect(
      o.cloneUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLinkableGitRepository--;
}

core.List<api.AccountConnector> buildUnnamed17() => [
      buildAccountConnector(),
      buildAccountConnector(),
    ];

void checkUnnamed17(core.List<api.AccountConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountConnector(o[0]);
  checkAccountConnector(o[1]);
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterListAccountConnectorsResponse = 0;
api.ListAccountConnectorsResponse buildListAccountConnectorsResponse() {
  final o = api.ListAccountConnectorsResponse();
  buildCounterListAccountConnectorsResponse++;
  if (buildCounterListAccountConnectorsResponse < 3) {
    o.accountConnectors = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListAccountConnectorsResponse--;
  return o;
}

void checkListAccountConnectorsResponse(api.ListAccountConnectorsResponse o) {
  buildCounterListAccountConnectorsResponse++;
  if (buildCounterListAccountConnectorsResponse < 3) {
    checkUnnamed17(o.accountConnectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListAccountConnectorsResponse--;
}

core.List<api.Connection> buildUnnamed19() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed19(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed19(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.GitRepositoryLink> buildUnnamed21() => [
      buildGitRepositoryLink(),
      buildGitRepositoryLink(),
    ];

void checkUnnamed21(core.List<api.GitRepositoryLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitRepositoryLink(o[0]);
  checkGitRepositoryLink(o[1]);
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterListGitRepositoryLinksResponse = 0;
api.ListGitRepositoryLinksResponse buildListGitRepositoryLinksResponse() {
  final o = api.ListGitRepositoryLinksResponse();
  buildCounterListGitRepositoryLinksResponse++;
  if (buildCounterListGitRepositoryLinksResponse < 3) {
    o.gitRepositoryLinks = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListGitRepositoryLinksResponse--;
  return o;
}

void checkListGitRepositoryLinksResponse(api.ListGitRepositoryLinksResponse o) {
  buildCounterListGitRepositoryLinksResponse++;
  if (buildCounterListGitRepositoryLinksResponse < 3) {
    checkUnnamed21(o.gitRepositoryLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListGitRepositoryLinksResponse--;
}

core.List<api.InsightsConfig> buildUnnamed23() => [
      buildInsightsConfig(),
      buildInsightsConfig(),
    ];

void checkUnnamed23(core.List<api.InsightsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsightsConfig(o[0]);
  checkInsightsConfig(o[1]);
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterListInsightsConfigsResponse = 0;
api.ListInsightsConfigsResponse buildListInsightsConfigsResponse() {
  final o = api.ListInsightsConfigsResponse();
  buildCounterListInsightsConfigsResponse++;
  if (buildCounterListInsightsConfigsResponse < 3) {
    o.insightsConfigs = buildUnnamed23();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed24();
  }
  buildCounterListInsightsConfigsResponse--;
  return o;
}

void checkListInsightsConfigsResponse(api.ListInsightsConfigsResponse o) {
  buildCounterListInsightsConfigsResponse++;
  if (buildCounterListInsightsConfigsResponse < 3) {
    checkUnnamed23(o.insightsConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListInsightsConfigsResponse--;
}

core.List<api.Location> buildUnnamed25() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed25(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed25(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed26() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed26(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed26();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<api.User> buildUnnamed28() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed28(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterListUsersResponse = 0;
api.ListUsersResponse buildListUsersResponse() {
  final o = api.ListUsersResponse();
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
    o.users = buildUnnamed28();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.unreachable!);
    checkUnnamed28(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed29();
    o.locationId = 'foo';
    o.metadata = buildUnnamed30();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterOAuthCredential = 0;
api.OAuthCredential buildOAuthCredential() {
  final o = api.OAuthCredential();
  buildCounterOAuthCredential++;
  if (buildCounterOAuthCredential < 3) {
    o.oauthTokenSecretVersion = 'foo';
    o.username = 'foo';
  }
  buildCounterOAuthCredential--;
  return o;
}

void checkOAuthCredential(api.OAuthCredential o) {
  buildCounterOAuthCredential++;
  if (buildCounterOAuthCredential < 3) {
    unittest.expect(
      o.oauthTokenSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterOAuthCredential--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed31();
    o.name = 'foo';
    o.response = buildUnnamed32();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed31(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterProcessBitbucketCloudWebhookRequest = 0;
api.ProcessBitbucketCloudWebhookRequest
    buildProcessBitbucketCloudWebhookRequest() {
  final o = api.ProcessBitbucketCloudWebhookRequest();
  buildCounterProcessBitbucketCloudWebhookRequest++;
  if (buildCounterProcessBitbucketCloudWebhookRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterProcessBitbucketCloudWebhookRequest--;
  return o;
}

void checkProcessBitbucketCloudWebhookRequest(
    api.ProcessBitbucketCloudWebhookRequest o) {
  buildCounterProcessBitbucketCloudWebhookRequest++;
  if (buildCounterProcessBitbucketCloudWebhookRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterProcessBitbucketCloudWebhookRequest--;
}

core.int buildCounterProcessBitbucketDataCenterWebhookRequest = 0;
api.ProcessBitbucketDataCenterWebhookRequest
    buildProcessBitbucketDataCenterWebhookRequest() {
  final o = api.ProcessBitbucketDataCenterWebhookRequest();
  buildCounterProcessBitbucketDataCenterWebhookRequest++;
  if (buildCounterProcessBitbucketDataCenterWebhookRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterProcessBitbucketDataCenterWebhookRequest--;
  return o;
}

void checkProcessBitbucketDataCenterWebhookRequest(
    api.ProcessBitbucketDataCenterWebhookRequest o) {
  buildCounterProcessBitbucketDataCenterWebhookRequest++;
  if (buildCounterProcessBitbucketDataCenterWebhookRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterProcessBitbucketDataCenterWebhookRequest--;
}

core.int buildCounterProcessGitHubEnterpriseWebhookRequest = 0;
api.ProcessGitHubEnterpriseWebhookRequest
    buildProcessGitHubEnterpriseWebhookRequest() {
  final o = api.ProcessGitHubEnterpriseWebhookRequest();
  buildCounterProcessGitHubEnterpriseWebhookRequest++;
  if (buildCounterProcessGitHubEnterpriseWebhookRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterProcessGitHubEnterpriseWebhookRequest--;
  return o;
}

void checkProcessGitHubEnterpriseWebhookRequest(
    api.ProcessGitHubEnterpriseWebhookRequest o) {
  buildCounterProcessGitHubEnterpriseWebhookRequest++;
  if (buildCounterProcessGitHubEnterpriseWebhookRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterProcessGitHubEnterpriseWebhookRequest--;
}

core.int buildCounterProcessGitLabEnterpriseWebhookRequest = 0;
api.ProcessGitLabEnterpriseWebhookRequest
    buildProcessGitLabEnterpriseWebhookRequest() {
  final o = api.ProcessGitLabEnterpriseWebhookRequest();
  buildCounterProcessGitLabEnterpriseWebhookRequest++;
  if (buildCounterProcessGitLabEnterpriseWebhookRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterProcessGitLabEnterpriseWebhookRequest--;
  return o;
}

void checkProcessGitLabEnterpriseWebhookRequest(
    api.ProcessGitLabEnterpriseWebhookRequest o) {
  buildCounterProcessGitLabEnterpriseWebhookRequest++;
  if (buildCounterProcessGitLabEnterpriseWebhookRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterProcessGitLabEnterpriseWebhookRequest--;
}

core.int buildCounterProcessGitLabWebhookRequest = 0;
api.ProcessGitLabWebhookRequest buildProcessGitLabWebhookRequest() {
  final o = api.ProcessGitLabWebhookRequest();
  buildCounterProcessGitLabWebhookRequest++;
  if (buildCounterProcessGitLabWebhookRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterProcessGitLabWebhookRequest--;
  return o;
}

void checkProcessGitLabWebhookRequest(api.ProcessGitLabWebhookRequest o) {
  buildCounterProcessGitLabWebhookRequest++;
  if (buildCounterProcessGitLabWebhookRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterProcessGitLabWebhookRequest--;
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterProviderOAuthConfig = 0;
api.ProviderOAuthConfig buildProviderOAuthConfig() {
  final o = api.ProviderOAuthConfig();
  buildCounterProviderOAuthConfig++;
  if (buildCounterProviderOAuthConfig < 3) {
    o.scopes = buildUnnamed33();
    o.systemProviderId = 'foo';
  }
  buildCounterProviderOAuthConfig--;
  return o;
}

void checkProviderOAuthConfig(api.ProviderOAuthConfig o) {
  buildCounterProviderOAuthConfig++;
  if (buildCounterProviderOAuthConfig < 3) {
    checkUnnamed33(o.scopes!);
    unittest.expect(
      o.systemProviderId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProviderOAuthConfig--;
}

core.int buildCounterRuntimeConfig = 0;
api.RuntimeConfig buildRuntimeConfig() {
  final o = api.RuntimeConfig();
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    o.appHubWorkload = buildAppHubWorkload();
    o.gkeWorkload = buildGKEWorkload();
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterRuntimeConfig--;
  return o;
}

void checkRuntimeConfig(api.RuntimeConfig o) {
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    checkAppHubWorkload(o.appHubWorkload!);
    checkGKEWorkload(o.gkeWorkload!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeConfig--;
}

core.int buildCounterServiceDirectoryConfig = 0;
api.ServiceDirectoryConfig buildServiceDirectoryConfig() {
  final o = api.ServiceDirectoryConfig();
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    o.service = 'foo';
  }
  buildCounterServiceDirectoryConfig--;
  return o;
}

void checkServiceDirectoryConfig(api.ServiceDirectoryConfig o) {
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceDirectoryConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed35() => [
      buildUnnamed34(),
      buildUnnamed34(),
    ];

void checkUnnamed35(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed34(o[0]);
  checkUnnamed34(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed35();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed35(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.lastTokenRequestTime = 'foo';
    o.name = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTokenRequestTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.int buildCounterUserCredential = 0;
api.UserCredential buildUserCredential() {
  final o = api.UserCredential();
  buildCounterUserCredential++;
  if (buildCounterUserCredential < 3) {
    o.userTokenSecretVersion = 'foo';
    o.username = 'foo';
  }
  buildCounterUserCredential--;
  return o;
}

void checkUserCredential(api.UserCredential o) {
  buildCounterUserCredential++;
  if (buildCounterUserCredential < 3) {
    unittest.expect(
      o.userTokenSecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserCredential--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AccountConnector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountConnector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountConnector(od);
    });
  });

  unittest.group('obj-schema-AppHubWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppHubWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppHubWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppHubWorkload(od);
    });
  });

  unittest.group('obj-schema-ArtifactConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArtifactConfig(od);
    });
  });

  unittest.group('obj-schema-BitbucketCloudConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketCloudConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketCloudConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketCloudConfig(od);
    });
  });

  unittest.group('obj-schema-BitbucketDataCenterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketDataCenterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketDataCenterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBitbucketDataCenterConfig(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-CryptoKeyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoKeyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoKeyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCryptoKeyConfig(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExchangeError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExchangeError(od);
    });
  });

  unittest.group('obj-schema-FetchAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitHubInstallationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitHubInstallationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitHubInstallationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchGitHubInstallationsResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitRefsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitRefsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitRefsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchGitRefsResponse(od);
    });
  });

  unittest.group('obj-schema-FetchLinkableGitRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchLinkableGitRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchLinkableGitRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchLinkableGitRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-FetchReadTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchReadTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchReadTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchReadTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchReadWriteTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadWriteTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadWriteTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchReadWriteTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchReadWriteTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadWriteTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadWriteTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchReadWriteTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GKEWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGKEWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GKEWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGKEWorkload(od);
    });
  });

  unittest.group('obj-schema-GitHubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubConfig(od);
    });
  });

  unittest.group('obj-schema-GitHubEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitLabEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitProxyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitProxyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitProxyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitProxyConfig(od);
    });
  });

  unittest.group('obj-schema-GitRepositoryLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitRepositoryLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitRepositoryLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitRepositoryLink(od);
    });
  });

  unittest.group('obj-schema-GoogleArtifactAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleArtifactAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleArtifactAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleArtifactAnalysis(od);
    });
  });

  unittest.group('obj-schema-GoogleArtifactRegistry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleArtifactRegistry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleArtifactRegistry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleArtifactRegistry(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-InsightsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsightsConfig(od);
    });
  });

  unittest.group('obj-schema-Installation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Installation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallation(od);
    });
  });

  unittest.group('obj-schema-InstallationState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallationState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallationState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallationState(od);
    });
  });

  unittest.group('obj-schema-LinkableGitRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkableGitRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkableGitRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkableGitRepository(od);
    });
  });

  unittest.group('obj-schema-ListAccountConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGitRepositoryLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGitRepositoryLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGitRepositoryLinksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGitRepositoryLinksResponse(od);
    });
  });

  unittest.group('obj-schema-ListInsightsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInsightsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInsightsConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInsightsConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-OAuthCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOAuthCredential(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-ProcessBitbucketCloudWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessBitbucketCloudWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessBitbucketCloudWebhookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessBitbucketCloudWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessBitbucketDataCenterWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessBitbucketDataCenterWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessBitbucketDataCenterWebhookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessBitbucketDataCenterWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitHubEnterpriseWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitHubEnterpriseWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitHubEnterpriseWebhookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessGitHubEnterpriseWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitLabEnterpriseWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitLabEnterpriseWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitLabEnterpriseWebhookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessGitLabEnterpriseWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitLabWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitLabWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitLabWebhookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessGitLabWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProviderOAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProviderOAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProviderOAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProviderOAuthConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserCredential(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed36();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['extraLocationTypes']!,
          unittest.equals(arg_extraLocationTypes),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          extraLocationTypes: arg_extraLocationTypes,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAccountConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.accountConnectors;
      final arg_request = buildAccountConnector();
      final arg_parent = 'foo';
      final arg_accountConnectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountConnector.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountConnector(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['accountConnectorId']!.first,
          unittest.equals(arg_accountConnectorId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          accountConnectorId: arg_accountConnectorId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.accountConnectors;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag,
          force: arg_force,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.accountConnectors;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAccountConnector());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccountConnector(response as api.AccountConnector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.accountConnectors;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAccountConnectorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAccountConnectorsResponse(
          response as api.ListAccountConnectorsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.accountConnectors;
      final arg_request = buildAccountConnector();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AccountConnector.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAccountConnector(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAccountConnectorsUsersResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .accountConnectors
          .users;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteSelf', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .accountConnectors
          .users;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteSelf(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchAccessToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .accountConnectors
          .users;
      final arg_request = buildFetchAccessTokenRequest();
      final arg_accountConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchAccessTokenRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildFetchAccessTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchAccessToken(
          arg_request, arg_accountConnector,
          $fields: arg_$fields);
      checkFetchAccessTokenResponse(response as api.FetchAccessTokenResponse);
    });

    unittest.test('method--fetchSelf', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .accountConnectors
          .users;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchSelf(arg_name, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .accountConnectors
          .users;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUsersResponse(response as api.ListUsersResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_connectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['connectionId']!.first,
          unittest.equals(arg_connectionId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          connectionId: arg_connectionId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchGitHubInstallations', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_connection = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp =
            convert.json.encode(buildFetchGitHubInstallationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchGitHubInstallations(arg_connection,
          $fields: arg_$fields);
      checkFetchGitHubInstallationsResponse(
          response as api.FetchGitHubInstallationsResponse);
    });

    unittest.test('method--fetchLinkableGitRepositories', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_connection = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFetchLinkableGitRepositoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchLinkableGitRepositories(arg_connection,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkFetchLinkableGitRepositoriesResponse(
          response as api.FetchLinkableGitRepositoriesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--processGitHubEnterpriseWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_request = buildProcessGitHubEnterpriseWebhookRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProcessGitHubEnterpriseWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProcessGitHubEnterpriseWebhookRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.processGitHubEnterpriseWebhook(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsGitRepositoryLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildGitRepositoryLink();
      final arg_parent = 'foo';
      final arg_gitRepositoryLinkId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GitRepositoryLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGitRepositoryLink(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['gitRepositoryLinkId']!.first,
          unittest.equals(arg_gitRepositoryLinkId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          gitRepositoryLinkId: arg_gitRepositoryLinkId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchGitRefs', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_gitRepositoryLink = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_refType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['refType']!.first,
          unittest.equals(arg_refType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFetchGitRefsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchGitRefs(arg_gitRepositoryLink,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          refType: arg_refType,
          $fields: arg_$fields);
      checkFetchGitRefsResponse(response as api.FetchGitRefsResponse);
    });

    unittest.test('method--fetchReadToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildFetchReadTokenRequest();
      final arg_gitRepositoryLink = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchReadTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchReadTokenRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildFetchReadTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchReadToken(
          arg_request, arg_gitRepositoryLink,
          $fields: arg_$fields);
      checkFetchReadTokenResponse(response as api.FetchReadTokenResponse);
    });

    unittest.test('method--fetchReadWriteToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildFetchReadWriteTokenRequest();
      final arg_gitRepositoryLink = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchReadWriteTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchReadWriteTokenRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildFetchReadWriteTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchReadWriteToken(
          arg_request, arg_gitRepositoryLink,
          $fields: arg_$fields);
      checkFetchReadWriteTokenResponse(
          response as api.FetchReadWriteTokenResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildGitRepositoryLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGitRepositoryLink(response as api.GitRepositoryLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListGitRepositoryLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGitRepositoryLinksResponse(
          response as api.ListGitRepositoryLinksResponse);
    });

    unittest.test('method--processBitbucketCloudWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildProcessBitbucketCloudWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProcessBitbucketCloudWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProcessBitbucketCloudWebhookRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.processBitbucketCloudWebhook(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processBitbucketDataCenterWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildProcessBitbucketDataCenterWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProcessBitbucketDataCenterWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProcessBitbucketDataCenterWebhookRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.processBitbucketDataCenterWebhook(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processGitLabEnterpriseWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildProcessGitLabEnterpriseWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProcessGitLabEnterpriseWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProcessGitLabEnterpriseWebhookRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.processGitLabEnterpriseWebhook(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processGitLabWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock)
          .projects
          .locations
          .connections
          .gitRepositoryLinks;
      final arg_request = buildProcessGitLabWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProcessGitLabWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProcessGitLabWebhookRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.processGitLabWebhook(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.insightsConfigs;
      final arg_request = buildInsightsConfig();
      final arg_parent = 'foo';
      final arg_insightsConfigId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InsightsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInsightsConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['insightsConfigId']!.first,
          unittest.equals(arg_insightsConfigId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          insightsConfigId: arg_insightsConfigId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.insightsConfigs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          etag: arg_etag,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.insightsConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildInsightsConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInsightsConfig(response as api.InsightsConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.insightsConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListInsightsConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInsightsConfigsResponse(
          response as api.ListInsightsConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DeveloperConnectApi(mock).projects.locations.insightsConfigs;
      final arg_request = buildInsightsConfig();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InsightsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInsightsConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
