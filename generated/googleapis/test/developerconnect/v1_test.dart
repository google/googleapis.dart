// Copyright 2024 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAccountConnector = 0;
api.AccountConnector buildAccountConnector() {
  final o = api.AccountConnector();
  buildCounterAccountConnector++;
  if (buildCounterAccountConnector < 3) {
    o.annotations = buildUnnamed0();
    o.createTime = 'foo';
    o.customOauthConfig = buildCustomOAuthConfig();
    o.etag = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.oauthStartUri = 'foo';
    o.providerOauthConfig = buildProviderOAuthConfig();
    o.proxyConfig = buildProxyConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAccountConnector--;
  return o;
}

void checkAccountConnector(api.AccountConnector o) {
  buildCounterAccountConnector++;
  if (buildCounterAccountConnector < 3) {
    checkUnnamed0(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomOAuthConfig(o.customOauthConfig!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.oauthStartUri!, unittest.equals('foo'));
    checkProviderOAuthConfig(o.providerOauthConfig!);
    checkProxyConfig(o.proxyConfig!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAccountConnector--;
}

core.int buildCounterAddGitRepositoryLinkPullRequestCommentRequest = 0;
api.AddGitRepositoryLinkPullRequestCommentRequest
buildAddGitRepositoryLinkPullRequestCommentRequest() {
  final o = api.AddGitRepositoryLinkPullRequestCommentRequest();
  buildCounterAddGitRepositoryLinkPullRequestCommentRequest++;
  if (buildCounterAddGitRepositoryLinkPullRequestCommentRequest < 3) {
    o.comment = buildPullRequestComment();
    o.pullRequestId = 'foo';
  }
  buildCounterAddGitRepositoryLinkPullRequestCommentRequest--;
  return o;
}

void checkAddGitRepositoryLinkPullRequestCommentRequest(
  api.AddGitRepositoryLinkPullRequestCommentRequest o,
) {
  buildCounterAddGitRepositoryLinkPullRequestCommentRequest++;
  if (buildCounterAddGitRepositoryLinkPullRequestCommentRequest < 3) {
    checkPullRequestComment(o.comment!);
    unittest.expect(o.pullRequestId!, unittest.equals('foo'));
  }
  buildCounterAddGitRepositoryLinkPullRequestCommentRequest--;
}

core.int buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest = 0;
api.AddGitRepositoryLinkPullRequestReviewCommentRequest
buildAddGitRepositoryLinkPullRequestReviewCommentRequest() {
  final o = api.AddGitRepositoryLinkPullRequestReviewCommentRequest();
  buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest++;
  if (buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest < 3) {
    o.comment = buildPullRequestReviewComment();
    o.commitId = 'foo';
    o.pullRequestId = 'foo';
  }
  buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest--;
  return o;
}

void checkAddGitRepositoryLinkPullRequestReviewCommentRequest(
  api.AddGitRepositoryLinkPullRequestReviewCommentRequest o,
) {
  buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest++;
  if (buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest < 3) {
    checkPullRequestReviewComment(o.comment!);
    unittest.expect(o.commitId!, unittest.equals('foo'));
    unittest.expect(o.pullRequestId!, unittest.equals('foo'));
  }
  buildCounterAddGitRepositoryLinkPullRequestReviewCommentRequest--;
}

core.int buildCounterAppHubService = 0;
api.AppHubService buildAppHubService() {
  final o = api.AppHubService();
  buildCounterAppHubService++;
  if (buildCounterAppHubService < 3) {
    o.apphubService = 'foo';
    o.criticality = 'foo';
    o.environment = 'foo';
  }
  buildCounterAppHubService--;
  return o;
}

void checkAppHubService(api.AppHubService o) {
  buildCounterAppHubService++;
  if (buildCounterAppHubService < 3) {
    unittest.expect(o.apphubService!, unittest.equals('foo'));
    unittest.expect(o.criticality!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
  }
  buildCounterAppHubService--;
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
    unittest.expect(o.criticality!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    unittest.expect(o.workload!, unittest.equals('foo'));
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
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterArtifactConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterArtifactDeployment = 0;
api.ArtifactDeployment buildArtifactDeployment() {
  final o = api.ArtifactDeployment();
  buildCounterArtifactDeployment++;
  if (buildCounterArtifactDeployment < 3) {
    o.artifactAlias = 'foo';
    o.artifactReference = 'foo';
    o.containerStatusSummary = 'foo';
    o.deployTime = 'foo';
    o.id = 'foo';
    o.sourceCodeUris = buildUnnamed2();
    o.sourceCommitUris = buildUnnamed3();
    o.undeployTime = 'foo';
  }
  buildCounterArtifactDeployment--;
  return o;
}

void checkArtifactDeployment(api.ArtifactDeployment o) {
  buildCounterArtifactDeployment++;
  if (buildCounterArtifactDeployment < 3) {
    unittest.expect(o.artifactAlias!, unittest.equals('foo'));
    unittest.expect(o.artifactReference!, unittest.equals('foo'));
    unittest.expect(o.containerStatusSummary!, unittest.equals('foo'));
    unittest.expect(o.deployTime!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed2(o.sourceCodeUris!);
    checkUnnamed3(o.sourceCommitUris!);
    unittest.expect(o.undeployTime!, unittest.equals('foo'));
  }
  buildCounterArtifactDeployment--;
}

core.int buildCounterBasicAuthentication = 0;
api.BasicAuthentication buildBasicAuthentication() {
  final o = api.BasicAuthentication();
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    o.passwordSecretVersion = 'foo';
    o.username = 'foo';
  }
  buildCounterBasicAuthentication--;
  return o;
}

void checkBasicAuthentication(api.BasicAuthentication o) {
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    unittest.expect(o.passwordSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterBasicAuthentication--;
}

core.int buildCounterBearerTokenAuthentication = 0;
api.BearerTokenAuthentication buildBearerTokenAuthentication() {
  final o = api.BearerTokenAuthentication();
  buildCounterBearerTokenAuthentication++;
  if (buildCounterBearerTokenAuthentication < 3) {
    o.tokenSecretVersion = 'foo';
  }
  buildCounterBearerTokenAuthentication--;
  return o;
}

void checkBearerTokenAuthentication(api.BearerTokenAuthentication o) {
  buildCounterBearerTokenAuthentication++;
  if (buildCounterBearerTokenAuthentication < 3) {
    unittest.expect(o.tokenSecretVersion!, unittest.equals('foo'));
  }
  buildCounterBearerTokenAuthentication--;
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
    unittest.expect(o.webhookSecretSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.workspace!, unittest.equals('foo'));
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
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(o.serverVersion!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.sslCaCertificate!, unittest.equals('foo'));
    unittest.expect(o.webhookSecretSecretVersion!, unittest.equals('foo'));
  }
  buildCounterBitbucketDataCenterConfig--;
}

core.int buildCounterBlameRange = 0;
api.BlameRange buildBlameRange() {
  final o = api.BlameRange();
  buildCounterBlameRange++;
  if (buildCounterBlameRange < 3) {
    o.commit = buildSCMCommit();
    o.firstLine = 42;
    o.lastLine = 42;
  }
  buildCounterBlameRange--;
  return o;
}

void checkBlameRange(api.BlameRange o) {
  buildCounterBlameRange++;
  if (buildCounterBlameRange < 3) {
    checkSCMCommit(o.commit!);
    unittest.expect(o.firstLine!, unittest.equals(42));
    unittest.expect(o.lastLine!, unittest.equals(42));
  }
  buildCounterBlameRange--;
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

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.annotations = buildUnnamed4();
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
    o.httpConfig = buildGenericHTTPEndpointConfig();
    o.installationState = buildInstallationState();
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.reconciling = true;
    o.secureSourceManagerInstanceConfig =
        buildSecureSourceManagerInstanceConfig();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkUnnamed4(o.annotations!);
    checkBitbucketCloudConfig(o.bitbucketCloudConfig!);
    checkBitbucketDataCenterConfig(o.bitbucketDataCenterConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCryptoKeyConfig(o.cryptoKeyConfig!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGitProxyConfig(o.gitProxyConfig!);
    checkGitHubConfig(o.githubConfig!);
    checkGitHubEnterpriseConfig(o.githubEnterpriseConfig!);
    checkGitLabConfig(o.gitlabConfig!);
    checkGitLabEnterpriseConfig(o.gitlabEnterpriseConfig!);
    checkGenericHTTPEndpointConfig(o.httpConfig!);
    checkInstallationState(o.installationState!);
    checkUnnamed5(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkSecureSourceManagerInstanceConfig(
      o.secureSourceManagerInstanceConfig!,
    );
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
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
    unittest.expect(o.keyReference!, unittest.equals('foo'));
  }
  buildCounterCryptoKeyConfig--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomOAuthConfig = 0;
api.CustomOAuthConfig buildCustomOAuthConfig() {
  final o = api.CustomOAuthConfig();
  buildCounterCustomOAuthConfig++;
  if (buildCounterCustomOAuthConfig < 3) {
    o.authUri = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.hostUri = 'foo';
    o.pkceDisabled = true;
    o.scmProvider = 'foo';
    o.scopes = buildUnnamed6();
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCaCertificate = 'foo';
    o.tokenUri = 'foo';
  }
  buildCounterCustomOAuthConfig--;
  return o;
}

void checkCustomOAuthConfig(api.CustomOAuthConfig o) {
  buildCounterCustomOAuthConfig++;
  if (buildCounterCustomOAuthConfig < 3) {
    unittest.expect(o.authUri!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    unittest.expect(o.pkceDisabled!, unittest.isTrue);
    unittest.expect(o.scmProvider!, unittest.equals('foo'));
    checkUnnamed6(o.scopes!);
    unittest.expect(o.serverVersion!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.sslCaCertificate!, unittest.equals('foo'));
    unittest.expect(o.tokenUri!, unittest.equals('foo'));
  }
  buildCounterCustomOAuthConfig--;
}

core.List<api.ArtifactDeployment> buildUnnamed7() => [
  buildArtifactDeployment(),
  buildArtifactDeployment(),
];

void checkUnnamed7(core.List<api.ArtifactDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactDeployment(o[0]);
  checkArtifactDeployment(o[1]);
}

core.int buildCounterDeploymentEvent = 0;
api.DeploymentEvent buildDeploymentEvent() {
  final o = api.DeploymentEvent();
  buildCounterDeploymentEvent++;
  if (buildCounterDeploymentEvent < 3) {
    o.artifactDeployments = buildUnnamed7();
    o.createTime = 'foo';
    o.deployTime = 'foo';
    o.name = 'foo';
    o.runtimeConfig = buildRuntimeConfig();
    o.runtimeDeploymentUri = 'foo';
    o.state = 'foo';
    o.undeployTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDeploymentEvent--;
  return o;
}

void checkDeploymentEvent(api.DeploymentEvent o) {
  buildCounterDeploymentEvent++;
  if (buildCounterDeploymentEvent < 3) {
    checkUnnamed7(o.artifactDeployments!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deployTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRuntimeConfig(o.runtimeConfig!);
    unittest.expect(o.runtimeDeploymentUri!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.undeployTime!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDeploymentEvent--;
}

core.List<api.FileDiff> buildUnnamed8() => [buildFileDiff(), buildFileDiff()];

void checkUnnamed8(core.List<api.FileDiff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileDiff(o[0]);
  checkFileDiff(o[1]);
}

core.int buildCounterDiffGitRepositoryLinkCommitResponse = 0;
api.DiffGitRepositoryLinkCommitResponse
buildDiffGitRepositoryLinkCommitResponse() {
  final o = api.DiffGitRepositoryLinkCommitResponse();
  buildCounterDiffGitRepositoryLinkCommitResponse++;
  if (buildCounterDiffGitRepositoryLinkCommitResponse < 3) {
    o.files = buildUnnamed8();
  }
  buildCounterDiffGitRepositoryLinkCommitResponse--;
  return o;
}

void checkDiffGitRepositoryLinkCommitResponse(
  api.DiffGitRepositoryLinkCommitResponse o,
) {
  buildCounterDiffGitRepositoryLinkCommitResponse++;
  if (buildCounterDiffGitRepositoryLinkCommitResponse < 3) {
    checkUnnamed8(o.files!);
  }
  buildCounterDiffGitRepositoryLinkCommitResponse--;
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
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
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

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFetchAccessTokenResponse = 0;
api.FetchAccessTokenResponse buildFetchAccessTokenResponse() {
  final o = api.FetchAccessTokenResponse();
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    o.exchangeError = buildExchangeError();
    o.expirationTime = 'foo';
    o.scopes = buildUnnamed9();
    o.token = 'foo';
  }
  buildCounterFetchAccessTokenResponse--;
  return o;
}

void checkFetchAccessTokenResponse(api.FetchAccessTokenResponse o) {
  buildCounterFetchAccessTokenResponse++;
  if (buildCounterFetchAccessTokenResponse < 3) {
    checkExchangeError(o.exchangeError!);
    unittest.expect(o.expirationTime!, unittest.equals('foo'));
    checkUnnamed9(o.scopes!);
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterFetchAccessTokenResponse--;
}

core.List<api.Installation> buildUnnamed10() => [
  buildInstallation(),
  buildInstallation(),
];

void checkUnnamed10(core.List<api.Installation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstallation(o[0]);
  checkInstallation(o[1]);
}

core.int buildCounterFetchGitHubInstallationsResponse = 0;
api.FetchGitHubInstallationsResponse buildFetchGitHubInstallationsResponse() {
  final o = api.FetchGitHubInstallationsResponse();
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    o.installations = buildUnnamed10();
  }
  buildCounterFetchGitHubInstallationsResponse--;
  return o;
}

void checkFetchGitHubInstallationsResponse(
  api.FetchGitHubInstallationsResponse o,
) {
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    checkUnnamed10(o.installations!);
  }
  buildCounterFetchGitHubInstallationsResponse--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFetchGitRefsResponse = 0;
api.FetchGitRefsResponse buildFetchGitRefsResponse() {
  final o = api.FetchGitRefsResponse();
  buildCounterFetchGitRefsResponse++;
  if (buildCounterFetchGitRefsResponse < 3) {
    o.nextPageToken = 'foo';
    o.refNames = buildUnnamed11();
  }
  buildCounterFetchGitRefsResponse--;
  return o;
}

void checkFetchGitRefsResponse(api.FetchGitRefsResponse o) {
  buildCounterFetchGitRefsResponse++;
  if (buildCounterFetchGitRefsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.refNames!);
  }
  buildCounterFetchGitRefsResponse--;
}

core.List<api.SCMCommit> buildUnnamed12() => [
  buildSCMCommit(),
  buildSCMCommit(),
];

void checkUnnamed12(core.List<api.SCMCommit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSCMCommit(o[0]);
  checkSCMCommit(o[1]);
}

core.int buildCounterFetchGitRepositoryLinkCommitListResponse = 0;
api.FetchGitRepositoryLinkCommitListResponse
buildFetchGitRepositoryLinkCommitListResponse() {
  final o = api.FetchGitRepositoryLinkCommitListResponse();
  buildCounterFetchGitRepositoryLinkCommitListResponse++;
  if (buildCounterFetchGitRepositoryLinkCommitListResponse < 3) {
    o.commits = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchGitRepositoryLinkCommitListResponse--;
  return o;
}

void checkFetchGitRepositoryLinkCommitListResponse(
  api.FetchGitRepositoryLinkCommitListResponse o,
) {
  buildCounterFetchGitRepositoryLinkCommitListResponse++;
  if (buildCounterFetchGitRepositoryLinkCommitListResponse < 3) {
    checkUnnamed12(o.commits!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterFetchGitRepositoryLinkCommitListResponse--;
}

core.List<api.FileDiff> buildUnnamed13() => [buildFileDiff(), buildFileDiff()];

void checkUnnamed13(core.List<api.FileDiff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileDiff(o[0]);
  checkFileDiff(o[1]);
}

core.int buildCounterFetchGitRepositoryLinkCommitResponse = 0;
api.FetchGitRepositoryLinkCommitResponse
buildFetchGitRepositoryLinkCommitResponse() {
  final o = api.FetchGitRepositoryLinkCommitResponse();
  buildCounterFetchGitRepositoryLinkCommitResponse++;
  if (buildCounterFetchGitRepositoryLinkCommitResponse < 3) {
    o.commit = buildSCMCommit();
    o.files = buildUnnamed13();
  }
  buildCounterFetchGitRepositoryLinkCommitResponse--;
  return o;
}

void checkFetchGitRepositoryLinkCommitResponse(
  api.FetchGitRepositoryLinkCommitResponse o,
) {
  buildCounterFetchGitRepositoryLinkCommitResponse++;
  if (buildCounterFetchGitRepositoryLinkCommitResponse < 3) {
    checkSCMCommit(o.commit!);
    checkUnnamed13(o.files!);
  }
  buildCounterFetchGitRepositoryLinkCommitResponse--;
}

core.List<api.BlameRange> buildUnnamed14() => [
  buildBlameRange(),
  buildBlameRange(),
];

void checkUnnamed14(core.List<api.BlameRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlameRange(o[0]);
  checkBlameRange(o[1]);
}

core.int buildCounterFetchGitRepositoryLinkFileBlameResponse = 0;
api.FetchGitRepositoryLinkFileBlameResponse
buildFetchGitRepositoryLinkFileBlameResponse() {
  final o = api.FetchGitRepositoryLinkFileBlameResponse();
  buildCounterFetchGitRepositoryLinkFileBlameResponse++;
  if (buildCounterFetchGitRepositoryLinkFileBlameResponse < 3) {
    o.ranges = buildUnnamed14();
  }
  buildCounterFetchGitRepositoryLinkFileBlameResponse--;
  return o;
}

void checkFetchGitRepositoryLinkFileBlameResponse(
  api.FetchGitRepositoryLinkFileBlameResponse o,
) {
  buildCounterFetchGitRepositoryLinkFileBlameResponse++;
  if (buildCounterFetchGitRepositoryLinkFileBlameResponse < 3) {
    checkUnnamed14(o.ranges!);
  }
  buildCounterFetchGitRepositoryLinkFileBlameResponse--;
}

core.List<api.PullRequest> buildUnnamed15() => [
  buildPullRequest(),
  buildPullRequest(),
];

void checkUnnamed15(core.List<api.PullRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPullRequest(o[0]);
  checkPullRequest(o[1]);
}

core.int buildCounterFetchGitRepositoryLinkPullRequestListResponse = 0;
api.FetchGitRepositoryLinkPullRequestListResponse
buildFetchGitRepositoryLinkPullRequestListResponse() {
  final o = api.FetchGitRepositoryLinkPullRequestListResponse();
  buildCounterFetchGitRepositoryLinkPullRequestListResponse++;
  if (buildCounterFetchGitRepositoryLinkPullRequestListResponse < 3) {
    o.nextPageToken = 'foo';
    o.pullRequests = buildUnnamed15();
  }
  buildCounterFetchGitRepositoryLinkPullRequestListResponse--;
  return o;
}

void checkFetchGitRepositoryLinkPullRequestListResponse(
  api.FetchGitRepositoryLinkPullRequestListResponse o,
) {
  buildCounterFetchGitRepositoryLinkPullRequestListResponse++;
  if (buildCounterFetchGitRepositoryLinkPullRequestListResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.pullRequests!);
  }
  buildCounterFetchGitRepositoryLinkPullRequestListResponse--;
}

core.List<api.LinkableGitRepository> buildUnnamed16() => [
  buildLinkableGitRepository(),
  buildLinkableGitRepository(),
];

void checkUnnamed16(core.List<api.LinkableGitRepository> o) {
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
    o.linkableGitRepositories = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchLinkableGitRepositoriesResponse--;
  return o;
}

void checkFetchLinkableGitRepositoriesResponse(
  api.FetchLinkableGitRepositoriesResponse o,
) {
  buildCounterFetchLinkableGitRepositoriesResponse++;
  if (buildCounterFetchLinkableGitRepositoriesResponse < 3) {
    checkUnnamed16(o.linkableGitRepositories!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
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
    unittest.expect(o.expirationTime!, unittest.equals('foo'));
    unittest.expect(o.gitUsername!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
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
    unittest.expect(o.expirationTime!, unittest.equals('foo'));
    unittest.expect(o.gitUsername!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterFetchReadWriteTokenResponse--;
}

core.List<api.UserRepository> buildUnnamed17() => [
  buildUserRepository(),
  buildUserRepository(),
];

void checkUnnamed17(core.List<api.UserRepository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRepository(o[0]);
  checkUserRepository(o[1]);
}

core.int buildCounterFetchUserRepositoriesResponse = 0;
api.FetchUserRepositoriesResponse buildFetchUserRepositoriesResponse() {
  final o = api.FetchUserRepositoriesResponse();
  buildCounterFetchUserRepositoriesResponse++;
  if (buildCounterFetchUserRepositoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.userRepos = buildUnnamed17();
  }
  buildCounterFetchUserRepositoriesResponse--;
  return o;
}

void checkFetchUserRepositoriesResponse(api.FetchUserRepositoriesResponse o) {
  buildCounterFetchUserRepositoriesResponse++;
  if (buildCounterFetchUserRepositoriesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.userRepos!);
  }
  buildCounterFetchUserRepositoriesResponse--;
}

core.int buildCounterFileDiff = 0;
api.FileDiff buildFileDiff() {
  final o = api.FileDiff();
  buildCounterFileDiff++;
  if (buildCounterFileDiff < 3) {
    o.patch = 'foo';
    o.path = 'foo';
    o.status = 'foo';
  }
  buildCounterFileDiff--;
  return o;
}

void checkFileDiff(api.FileDiff o) {
  buildCounterFileDiff++;
  if (buildCounterFileDiff < 3) {
    unittest.expect(o.patch!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterFileDiff--;
}

core.int buildCounterFinishOAuthResponse = 0;
api.FinishOAuthResponse buildFinishOAuthResponse() {
  final o = api.FinishOAuthResponse();
  buildCounterFinishOAuthResponse++;
  if (buildCounterFinishOAuthResponse < 3) {
    o.exchangeError = buildExchangeError();
  }
  buildCounterFinishOAuthResponse--;
  return o;
}

void checkFinishOAuthResponse(api.FinishOAuthResponse o) {
  buildCounterFinishOAuthResponse++;
  if (buildCounterFinishOAuthResponse < 3) {
    checkExchangeError(o.exchangeError!);
  }
  buildCounterFinishOAuthResponse--;
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
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.deployment!, unittest.equals('foo'));
  }
  buildCounterGKEWorkload--;
}

core.int buildCounterGenericHTTPEndpointConfig = 0;
api.GenericHTTPEndpointConfig buildGenericHTTPEndpointConfig() {
  final o = api.GenericHTTPEndpointConfig();
  buildCounterGenericHTTPEndpointConfig++;
  if (buildCounterGenericHTTPEndpointConfig < 3) {
    o.basicAuthentication = buildBasicAuthentication();
    o.bearerTokenAuthentication = buildBearerTokenAuthentication();
    o.hostUri = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.sslCaCertificate = 'foo';
  }
  buildCounterGenericHTTPEndpointConfig--;
  return o;
}

void checkGenericHTTPEndpointConfig(api.GenericHTTPEndpointConfig o) {
  buildCounterGenericHTTPEndpointConfig++;
  if (buildCounterGenericHTTPEndpointConfig < 3) {
    checkBasicAuthentication(o.basicAuthentication!);
    checkBearerTokenAuthentication(o.bearerTokenAuthentication!);
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.sslCaCertificate!, unittest.equals('foo'));
  }
  buildCounterGenericHTTPEndpointConfig--;
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
    unittest.expect(o.appInstallationId!, unittest.equals('foo'));
    checkOAuthCredential(o.authorizerCredential!);
    unittest.expect(o.githubApp!, unittest.equals('foo'));
    unittest.expect(o.installationUri!, unittest.equals('foo'));
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
    o.organization = 'foo';
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
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.appInstallationId!, unittest.equals('foo'));
    unittest.expect(o.appSlug!, unittest.equals('foo'));
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    unittest.expect(o.installationUri!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.privateKeySecretVersion!, unittest.equals('foo'));
    unittest.expect(o.serverVersion!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.sslCaCertificate!, unittest.equals('foo'));
    unittest.expect(o.webhookSecretSecretVersion!, unittest.equals('foo'));
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
    unittest.expect(o.webhookSecretSecretVersion!, unittest.equals('foo'));
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
    unittest.expect(o.hostUri!, unittest.equals('foo'));
    checkUserCredential(o.readAuthorizerCredential!);
    unittest.expect(o.serverVersion!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.sslCaCertificate!, unittest.equals('foo'));
    unittest.expect(o.webhookSecretSecretVersion!, unittest.equals('foo'));
  }
  buildCounterGitLabEnterpriseConfig--;
}

core.int buildCounterGitProxyConfig = 0;
api.GitProxyConfig buildGitProxyConfig() {
  final o = api.GitProxyConfig();
  buildCounterGitProxyConfig++;
  if (buildCounterGitProxyConfig < 3) {
    o.enabled = true;
    o.httpProxyBaseUri = 'foo';
  }
  buildCounterGitProxyConfig--;
  return o;
}

void checkGitProxyConfig(api.GitProxyConfig o) {
  buildCounterGitProxyConfig++;
  if (buildCounterGitProxyConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.httpProxyBaseUri!, unittest.equals('foo'));
  }
  buildCounterGitProxyConfig--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGitRepositoryLink = 0;
api.GitRepositoryLink buildGitRepositoryLink() {
  final o = api.GitRepositoryLink();
  buildCounterGitRepositoryLink++;
  if (buildCounterGitRepositoryLink < 3) {
    o.annotations = buildUnnamed18();
    o.cloneUri = 'foo';
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.etag = 'foo';
    o.gitProxyUri = 'foo';
    o.labels = buildUnnamed19();
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
    checkUnnamed18(o.annotations!);
    unittest.expect(o.cloneUri!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.gitProxyUri!, unittest.equals('foo'));
    checkUnnamed19(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.webhookId!, unittest.equals('foo'));
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
    unittest.expect(o.projectId!, unittest.equals('foo'));
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
    unittest.expect(o.artifactRegistryPackage!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterGoogleArtifactRegistry--;
}

core.int buildCounterGoogleCloudRun = 0;
api.GoogleCloudRun buildGoogleCloudRun() {
  final o = api.GoogleCloudRun();
  buildCounterGoogleCloudRun++;
  if (buildCounterGoogleCloudRun < 3) {
    o.serviceUri = 'foo';
  }
  buildCounterGoogleCloudRun--;
  return o;
}

void checkGoogleCloudRun(api.GoogleCloudRun o) {
  buildCounterGoogleCloudRun++;
  if (buildCounterGoogleCloudRun < 3) {
    unittest.expect(o.serviceUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudRun--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
  buildUnnamed20(),
  buildUnnamed20(),
];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed21();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed21(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.Map<core.String, core.String> buildUnnamed22() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ArtifactConfig> buildUnnamed23() => [
  buildArtifactConfig(),
  buildArtifactConfig(),
];

void checkUnnamed23(core.List<api.ArtifactConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifactConfig(o[0]);
  checkArtifactConfig(o[1]);
}

core.List<api.Status> buildUnnamed24() => [buildStatus(), buildStatus()];

void checkUnnamed24(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.RuntimeConfig> buildUnnamed26() => [
  buildRuntimeConfig(),
  buildRuntimeConfig(),
];

void checkUnnamed26(core.List<api.RuntimeConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeConfig(o[0]);
  checkRuntimeConfig(o[1]);
}

core.int buildCounterInsightsConfig = 0;
api.InsightsConfig buildInsightsConfig() {
  final o = api.InsightsConfig();
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    o.annotations = buildUnnamed22();
    o.appHubApplication = 'foo';
    o.artifactConfigs = buildUnnamed23();
    o.createTime = 'foo';
    o.errors = buildUnnamed24();
    o.labels = buildUnnamed25();
    o.name = 'foo';
    o.projects = buildProjects();
    o.reconciling = true;
    o.runtimeConfigs = buildUnnamed26();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterInsightsConfig--;
  return o;
}

void checkInsightsConfig(api.InsightsConfig o) {
  buildCounterInsightsConfig++;
  if (buildCounterInsightsConfig < 3) {
    checkUnnamed22(o.annotations!);
    unittest.expect(o.appHubApplication!, unittest.equals('foo'));
    checkUnnamed23(o.artifactConfigs!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed24(o.errors!);
    checkUnnamed25(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProjects(o.projects!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed26(o.runtimeConfigs!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
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
    unittest.expect(o.actionUri!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.stage!, unittest.equals('foo'));
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
    unittest.expect(o.cloneUri!, unittest.equals('foo'));
  }
  buildCounterLinkableGitRepository--;
}

core.List<api.AccountConnector> buildUnnamed27() => [
  buildAccountConnector(),
  buildAccountConnector(),
];

void checkUnnamed27(core.List<api.AccountConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountConnector(o[0]);
  checkAccountConnector(o[1]);
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAccountConnectorsResponse = 0;
api.ListAccountConnectorsResponse buildListAccountConnectorsResponse() {
  final o = api.ListAccountConnectorsResponse();
  buildCounterListAccountConnectorsResponse++;
  if (buildCounterListAccountConnectorsResponse < 3) {
    o.accountConnectors = buildUnnamed27();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed28();
  }
  buildCounterListAccountConnectorsResponse--;
  return o;
}

void checkListAccountConnectorsResponse(api.ListAccountConnectorsResponse o) {
  buildCounterListAccountConnectorsResponse++;
  if (buildCounterListAccountConnectorsResponse < 3) {
    checkUnnamed27(o.accountConnectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed28(o.unreachable!);
  }
  buildCounterListAccountConnectorsResponse--;
}

core.List<api.Connection> buildUnnamed29() => [
  buildConnection(),
  buildConnection(),
];

void checkUnnamed29(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed29();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed30();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed29(o.connections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.unreachable!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.DeploymentEvent> buildUnnamed31() => [
  buildDeploymentEvent(),
  buildDeploymentEvent(),
];

void checkUnnamed31(core.List<api.DeploymentEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentEvent(o[0]);
  checkDeploymentEvent(o[1]);
}

core.int buildCounterListDeploymentEventsResponse = 0;
api.ListDeploymentEventsResponse buildListDeploymentEventsResponse() {
  final o = api.ListDeploymentEventsResponse();
  buildCounterListDeploymentEventsResponse++;
  if (buildCounterListDeploymentEventsResponse < 3) {
    o.deploymentEvents = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeploymentEventsResponse--;
  return o;
}

void checkListDeploymentEventsResponse(api.ListDeploymentEventsResponse o) {
  buildCounterListDeploymentEventsResponse++;
  if (buildCounterListDeploymentEventsResponse < 3) {
    checkUnnamed31(o.deploymentEvents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDeploymentEventsResponse--;
}

core.List<api.GitRepositoryLink> buildUnnamed32() => [
  buildGitRepositoryLink(),
  buildGitRepositoryLink(),
];

void checkUnnamed32(core.List<api.GitRepositoryLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitRepositoryLink(o[0]);
  checkGitRepositoryLink(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGitRepositoryLinksResponse = 0;
api.ListGitRepositoryLinksResponse buildListGitRepositoryLinksResponse() {
  final o = api.ListGitRepositoryLinksResponse();
  buildCounterListGitRepositoryLinksResponse++;
  if (buildCounterListGitRepositoryLinksResponse < 3) {
    o.gitRepositoryLinks = buildUnnamed32();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed33();
  }
  buildCounterListGitRepositoryLinksResponse--;
  return o;
}

void checkListGitRepositoryLinksResponse(api.ListGitRepositoryLinksResponse o) {
  buildCounterListGitRepositoryLinksResponse++;
  if (buildCounterListGitRepositoryLinksResponse < 3) {
    checkUnnamed32(o.gitRepositoryLinks!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed33(o.unreachable!);
  }
  buildCounterListGitRepositoryLinksResponse--;
}

core.List<api.InsightsConfig> buildUnnamed34() => [
  buildInsightsConfig(),
  buildInsightsConfig(),
];

void checkUnnamed34(core.List<api.InsightsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsightsConfig(o[0]);
  checkInsightsConfig(o[1]);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInsightsConfigsResponse = 0;
api.ListInsightsConfigsResponse buildListInsightsConfigsResponse() {
  final o = api.ListInsightsConfigsResponse();
  buildCounterListInsightsConfigsResponse++;
  if (buildCounterListInsightsConfigsResponse < 3) {
    o.insightsConfigs = buildUnnamed34();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed35();
  }
  buildCounterListInsightsConfigsResponse--;
  return o;
}

void checkListInsightsConfigsResponse(api.ListInsightsConfigsResponse o) {
  buildCounterListInsightsConfigsResponse++;
  if (buildCounterListInsightsConfigsResponse < 3) {
    checkUnnamed34(o.insightsConfigs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed35(o.unreachable!);
  }
  buildCounterListInsightsConfigsResponse--;
}

core.List<api.Location> buildUnnamed36() => [buildLocation(), buildLocation()];

void checkUnnamed36(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed36(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed37() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed37(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed37();
    o.unreachable = buildUnnamed38();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed37(o.operations!);
    checkUnnamed38(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.User> buildUnnamed40() => [buildUser(), buildUser()];

void checkUnnamed40(core.List<api.User> o) {
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
    o.unreachable = buildUnnamed39();
    o.users = buildUnnamed40();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed39(o.unreachable!);
    checkUnnamed40(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed41();
    o.locationId = 'foo';
    o.metadata = buildUnnamed42();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed41(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed42(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterModifyGitRepositoryLinkPullRequestRequest = 0;
api.ModifyGitRepositoryLinkPullRequestRequest
buildModifyGitRepositoryLinkPullRequestRequest() {
  final o = api.ModifyGitRepositoryLinkPullRequestRequest();
  buildCounterModifyGitRepositoryLinkPullRequestRequest++;
  if (buildCounterModifyGitRepositoryLinkPullRequestRequest < 3) {
    o.baseRef = 'foo';
    o.body = 'foo';
    o.pullRequestId = 'foo';
    o.state = 'foo';
    o.title = 'foo';
  }
  buildCounterModifyGitRepositoryLinkPullRequestRequest--;
  return o;
}

void checkModifyGitRepositoryLinkPullRequestRequest(
  api.ModifyGitRepositoryLinkPullRequestRequest o,
) {
  buildCounterModifyGitRepositoryLinkPullRequestRequest++;
  if (buildCounterModifyGitRepositoryLinkPullRequestRequest < 3) {
    unittest.expect(o.baseRef!, unittest.equals('foo'));
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.pullRequestId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterModifyGitRepositoryLinkPullRequestRequest--;
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
    unittest.expect(o.oauthTokenSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterOAuthCredential--;
}

core.int buildCounterOpenGitRepositoryLinkPullRequestRequest = 0;
api.OpenGitRepositoryLinkPullRequestRequest
buildOpenGitRepositoryLinkPullRequestRequest() {
  final o = api.OpenGitRepositoryLinkPullRequestRequest();
  buildCounterOpenGitRepositoryLinkPullRequestRequest++;
  if (buildCounterOpenGitRepositoryLinkPullRequestRequest < 3) {
    o.pullRequest = buildPullRequest();
  }
  buildCounterOpenGitRepositoryLinkPullRequestRequest--;
  return o;
}

void checkOpenGitRepositoryLinkPullRequestRequest(
  api.OpenGitRepositoryLinkPullRequestRequest o,
) {
  buildCounterOpenGitRepositoryLinkPullRequestRequest++;
  if (buildCounterOpenGitRepositoryLinkPullRequestRequest < 3) {
    checkPullRequest(o.pullRequest!);
  }
  buildCounterOpenGitRepositoryLinkPullRequestRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed43();
    o.name = 'foo';
    o.response = buildUnnamed44();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed43(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed44(o.response!);
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
  api.ProcessBitbucketCloudWebhookRequest o,
) {
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
  api.ProcessBitbucketDataCenterWebhookRequest o,
) {
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
  api.ProcessGitHubEnterpriseWebhookRequest o,
) {
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
  api.ProcessGitLabEnterpriseWebhookRequest o,
) {
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

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProjects = 0;
api.Projects buildProjects() {
  final o = api.Projects();
  buildCounterProjects++;
  if (buildCounterProjects < 3) {
    o.projectIds = buildUnnamed45();
  }
  buildCounterProjects--;
  return o;
}

void checkProjects(api.Projects o) {
  buildCounterProjects++;
  if (buildCounterProjects < 3) {
    checkUnnamed45(o.projectIds!);
  }
  buildCounterProjects--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProviderOAuthConfig = 0;
api.ProviderOAuthConfig buildProviderOAuthConfig() {
  final o = api.ProviderOAuthConfig();
  buildCounterProviderOAuthConfig++;
  if (buildCounterProviderOAuthConfig < 3) {
    o.scopes = buildUnnamed46();
    o.systemProviderId = 'foo';
  }
  buildCounterProviderOAuthConfig--;
  return o;
}

void checkProviderOAuthConfig(api.ProviderOAuthConfig o) {
  buildCounterProviderOAuthConfig++;
  if (buildCounterProviderOAuthConfig < 3) {
    checkUnnamed46(o.scopes!);
    unittest.expect(o.systemProviderId!, unittest.equals('foo'));
  }
  buildCounterProviderOAuthConfig--;
}

core.int buildCounterProxyConfig = 0;
api.ProxyConfig buildProxyConfig() {
  final o = api.ProxyConfig();
  buildCounterProxyConfig++;
  if (buildCounterProxyConfig < 3) {
    o.enabled = true;
    o.httpProxyBaseUri = 'foo';
  }
  buildCounterProxyConfig--;
  return o;
}

void checkProxyConfig(api.ProxyConfig o) {
  buildCounterProxyConfig++;
  if (buildCounterProxyConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.httpProxyBaseUri!, unittest.equals('foo'));
  }
  buildCounterProxyConfig--;
}

core.int buildCounterPullRequest = 0;
api.PullRequest buildPullRequest() {
  final o = api.PullRequest();
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    o.author = 'foo';
    o.baseRef = 'foo';
    o.body = 'foo';
    o.closeTime = 'foo';
    o.createTime = 'foo';
    o.declineTime = 'foo';
    o.headRef = 'foo';
    o.htmlUrl = 'foo';
    o.id = 'foo';
    o.mergeTime = 'foo';
    o.mergeability = 'foo';
    o.state = 'foo';
    o.title = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPullRequest--;
  return o;
}

void checkPullRequest(api.PullRequest o) {
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    unittest.expect(o.author!, unittest.equals('foo'));
    unittest.expect(o.baseRef!, unittest.equals('foo'));
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.closeTime!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.declineTime!, unittest.equals('foo'));
    unittest.expect(o.headRef!, unittest.equals('foo'));
    unittest.expect(o.htmlUrl!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.mergeTime!, unittest.equals('foo'));
    unittest.expect(o.mergeability!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPullRequest--;
}

core.int buildCounterPullRequestComment = 0;
api.PullRequestComment buildPullRequestComment() {
  final o = api.PullRequestComment();
  buildCounterPullRequestComment++;
  if (buildCounterPullRequestComment < 3) {
    o.author = 'foo';
    o.body = 'foo';
    o.createTime = 'foo';
    o.id = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPullRequestComment--;
  return o;
}

void checkPullRequestComment(api.PullRequestComment o) {
  buildCounterPullRequestComment++;
  if (buildCounterPullRequestComment < 3) {
    unittest.expect(o.author!, unittest.equals('foo'));
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPullRequestComment--;
}

core.int buildCounterPullRequestReviewComment = 0;
api.PullRequestReviewComment buildPullRequestReviewComment() {
  final o = api.PullRequestReviewComment();
  buildCounterPullRequestReviewComment++;
  if (buildCounterPullRequestReviewComment < 3) {
    o.author = 'foo';
    o.body = 'foo';
    o.commitId = 'foo';
    o.createTime = 'foo';
    o.firstLine = 42;
    o.id = 'foo';
    o.lastLine = 42;
    o.path = 'foo';
    o.side = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPullRequestReviewComment--;
  return o;
}

void checkPullRequestReviewComment(api.PullRequestReviewComment o) {
  buildCounterPullRequestReviewComment++;
  if (buildCounterPullRequestReviewComment < 3) {
    unittest.expect(o.author!, unittest.equals('foo'));
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.commitId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.firstLine!, unittest.equals(42));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.lastLine!, unittest.equals(42));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.side!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPullRequestReviewComment--;
}

core.int buildCounterRuntimeConfig = 0;
api.RuntimeConfig buildRuntimeConfig() {
  final o = api.RuntimeConfig();
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    o.appHubService = buildAppHubService();
    o.appHubWorkload = buildAppHubWorkload();
    o.gkeWorkload = buildGKEWorkload();
    o.googleCloudRun = buildGoogleCloudRun();
    o.state = 'foo';
    o.uri = 'foo';
  }
  buildCounterRuntimeConfig--;
  return o;
}

void checkRuntimeConfig(api.RuntimeConfig o) {
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    checkAppHubService(o.appHubService!);
    checkAppHubWorkload(o.appHubWorkload!);
    checkGKEWorkload(o.gkeWorkload!);
    checkGoogleCloudRun(o.googleCloudRun!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRuntimeConfig--;
}

core.int buildCounterSCMCommit = 0;
api.SCMCommit buildSCMCommit() {
  final o = api.SCMCommit();
  buildCounterSCMCommit++;
  if (buildCounterSCMCommit < 3) {
    o.author = 'foo';
    o.authorEmail = 'foo';
    o.commitTime = 'foo';
    o.message = 'foo';
    o.sha = 'foo';
    o.url = 'foo';
  }
  buildCounterSCMCommit--;
  return o;
}

void checkSCMCommit(api.SCMCommit o) {
  buildCounterSCMCommit++;
  if (buildCounterSCMCommit < 3) {
    unittest.expect(o.author!, unittest.equals('foo'));
    unittest.expect(o.authorEmail!, unittest.equals('foo'));
    unittest.expect(o.commitTime!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.sha!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterSCMCommit--;
}

core.int buildCounterSecureSourceManagerInstanceConfig = 0;
api.SecureSourceManagerInstanceConfig buildSecureSourceManagerInstanceConfig() {
  final o = api.SecureSourceManagerInstanceConfig();
  buildCounterSecureSourceManagerInstanceConfig++;
  if (buildCounterSecureSourceManagerInstanceConfig < 3) {
    o.instance = 'foo';
  }
  buildCounterSecureSourceManagerInstanceConfig--;
  return o;
}

void checkSecureSourceManagerInstanceConfig(
  api.SecureSourceManagerInstanceConfig o,
) {
  buildCounterSecureSourceManagerInstanceConfig++;
  if (buildCounterSecureSourceManagerInstanceConfig < 3) {
    unittest.expect(o.instance!, unittest.equals('foo'));
  }
  buildCounterSecureSourceManagerInstanceConfig--;
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
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterServiceDirectoryConfig--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStartOAuthResponse = 0;
api.StartOAuthResponse buildStartOAuthResponse() {
  final o = api.StartOAuthResponse();
  buildCounterStartOAuthResponse++;
  if (buildCounterStartOAuthResponse < 3) {
    o.authUri = 'foo';
    o.clientId = 'foo';
    o.codeChallenge = 'foo';
    o.codeChallengeMethod = 'foo';
    o.scopes = buildUnnamed47();
    o.systemProviderId = 'foo';
    o.ticket = 'foo';
  }
  buildCounterStartOAuthResponse--;
  return o;
}

void checkStartOAuthResponse(api.StartOAuthResponse o) {
  buildCounterStartOAuthResponse++;
  if (buildCounterStartOAuthResponse < 3) {
    unittest.expect(o.authUri!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.codeChallenge!, unittest.equals('foo'));
    unittest.expect(o.codeChallengeMethod!, unittest.equals('foo'));
    checkUnnamed47(o.scopes!);
    unittest.expect(o.systemProviderId!, unittest.equals('foo'));
    unittest.expect(o.ticket!, unittest.equals('foo'));
  }
  buildCounterStartOAuthResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed49() => [
  buildUnnamed48(),
  buildUnnamed48(),
];

void checkUnnamed49(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed48(o[0]);
  checkUnnamed48(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed49();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed49(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.lastTokenRequestTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
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
    unittest.expect(o.userTokenSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterUserCredential--;
}

core.int buildCounterUserRepository = 0;
api.UserRepository buildUserRepository() {
  final o = api.UserRepository();
  buildCounterUserRepository++;
  if (buildCounterUserRepository < 3) {
    o.cloneUri = 'foo';
    o.displayName = 'foo';
    o.gitProxyUri = 'foo';
  }
  buildCounterUserRepository--;
  return o;
}

void checkUserRepository(api.UserRepository o) {
  buildCounterUserRepository++;
  if (buildCounterUserRepository < 3) {
    unittest.expect(o.cloneUri!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.gitProxyUri!, unittest.equals('foo'));
  }
  buildCounterUserRepository--;
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccountConnector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountConnector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountConnector(od);
    });
  });

  unittest.group(
    'obj-schema-AddGitRepositoryLinkPullRequestCommentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAddGitRepositoryLinkPullRequestCommentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AddGitRepositoryLinkPullRequestCommentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAddGitRepositoryLinkPullRequestCommentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-AddGitRepositoryLinkPullRequestReviewCommentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAddGitRepositoryLinkPullRequestReviewCommentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AddGitRepositoryLinkPullRequestReviewCommentRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkAddGitRepositoryLinkPullRequestReviewCommentRequest(od);
      });
    },
  );

  unittest.group('obj-schema-AppHubService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppHubService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppHubService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppHubService(od);
    });
  });

  unittest.group('obj-schema-AppHubWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppHubWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppHubWorkload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppHubWorkload(od);
    });
  });

  unittest.group('obj-schema-ArtifactConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifactConfig(od);
    });
  });

  unittest.group('obj-schema-ArtifactDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifactDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArtifactDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifactDeployment(od);
    });
  });

  unittest.group('obj-schema-BasicAuthentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicAuthentication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasicAuthentication(od);
    });
  });

  unittest.group('obj-schema-BearerTokenAuthentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBearerTokenAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BearerTokenAuthentication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBearerTokenAuthentication(od);
    });
  });

  unittest.group('obj-schema-BitbucketCloudConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketCloudConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketCloudConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBitbucketCloudConfig(od);
    });
  });

  unittest.group('obj-schema-BitbucketDataCenterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBitbucketDataCenterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BitbucketDataCenterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBitbucketDataCenterConfig(od);
    });
  });

  unittest.group('obj-schema-BlameRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlameRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlameRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlameRange(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-CryptoKeyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoKeyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoKeyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCryptoKeyConfig(od);
    });
  });

  unittest.group('obj-schema-CustomOAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomOAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomOAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomOAuthConfig(od);
    });
  });

  unittest.group('obj-schema-DeploymentEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentEvent(od);
    });
  });

  unittest.group('obj-schema-DiffGitRepositoryLinkCommitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffGitRepositoryLinkCommitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffGitRepositoryLinkCommitResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffGitRepositoryLinkCommitResponse(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExchangeError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeError(od);
    });
  });

  unittest.group('obj-schema-FetchAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAccessTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitHubInstallationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitHubInstallationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitHubInstallationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitHubInstallationsResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitRefsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitRefsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitRefsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitRefsResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitRepositoryLinkCommitListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitRepositoryLinkCommitListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitRepositoryLinkCommitListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitRepositoryLinkCommitListResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitRepositoryLinkCommitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitRepositoryLinkCommitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitRepositoryLinkCommitResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitRepositoryLinkCommitResponse(od);
    });
  });

  unittest.group('obj-schema-FetchGitRepositoryLinkFileBlameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchGitRepositoryLinkFileBlameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchGitRepositoryLinkFileBlameResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchGitRepositoryLinkFileBlameResponse(od);
    });
  });

  unittest.group(
    'obj-schema-FetchGitRepositoryLinkPullRequestListResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildFetchGitRepositoryLinkPullRequestListResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.FetchGitRepositoryLinkPullRequestListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkFetchGitRepositoryLinkPullRequestListResponse(od);
      });
    },
  );

  unittest.group('obj-schema-FetchLinkableGitRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchLinkableGitRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchLinkableGitRepositoriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchLinkableGitRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-FetchReadTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchReadTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchReadTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchReadTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchReadWriteTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadWriteTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadWriteTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchReadWriteTokenRequest(od);
    });
  });

  unittest.group('obj-schema-FetchReadWriteTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchReadWriteTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchReadWriteTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchReadWriteTokenResponse(od);
    });
  });

  unittest.group('obj-schema-FetchUserRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchUserRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchUserRepositoriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFetchUserRepositoriesResponse(od);
    });
  });

  unittest.group('obj-schema-FileDiff', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileDiff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileDiff.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileDiff(od);
    });
  });

  unittest.group('obj-schema-FinishOAuthResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinishOAuthResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinishOAuthResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFinishOAuthResponse(od);
    });
  });

  unittest.group('obj-schema-GKEWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGKEWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GKEWorkload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGKEWorkload(od);
    });
  });

  unittest.group('obj-schema-GenericHTTPEndpointConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericHTTPEndpointConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericHTTPEndpointConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericHTTPEndpointConfig(od);
    });
  });

  unittest.group('obj-schema-GitHubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitHubConfig(od);
    });
  });

  unittest.group('obj-schema-GitHubEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubEnterpriseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitHubEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitLabConfig(od);
    });
  });

  unittest.group('obj-schema-GitLabEnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitLabEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitLabEnterpriseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitLabEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GitProxyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitProxyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitProxyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitProxyConfig(od);
    });
  });

  unittest.group('obj-schema-GitRepositoryLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitRepositoryLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitRepositoryLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitRepositoryLink(od);
    });
  });

  unittest.group('obj-schema-GoogleArtifactAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleArtifactAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleArtifactAnalysis.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleArtifactAnalysis(od);
    });
  });

  unittest.group('obj-schema-GoogleArtifactRegistry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleArtifactRegistry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleArtifactRegistry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleArtifactRegistry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudRun(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-InsightsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsightsConfig(od);
    });
  });

  unittest.group('obj-schema-Installation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Installation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallation(od);
    });
  });

  unittest.group('obj-schema-InstallationState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallationState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallationState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallationState(od);
    });
  });

  unittest.group('obj-schema-LinkableGitRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkableGitRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkableGitRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkableGitRepository(od);
    });
  });

  unittest.group('obj-schema-ListAccountConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountConnectorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeploymentEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeploymentEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeploymentEventsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeploymentEventsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGitRepositoryLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGitRepositoryLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGitRepositoryLinksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGitRepositoryLinksResponse(od);
    });
  });

  unittest.group('obj-schema-ListInsightsConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInsightsConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInsightsConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInsightsConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-ModifyGitRepositoryLinkPullRequestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyGitRepositoryLinkPullRequestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyGitRepositoryLinkPullRequestRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyGitRepositoryLinkPullRequestRequest(od);
    });
  });

  unittest.group('obj-schema-OAuthCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthCredential.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthCredential(od);
    });
  });

  unittest.group('obj-schema-OpenGitRepositoryLinkPullRequestRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenGitRepositoryLinkPullRequestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenGitRepositoryLinkPullRequestRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenGitRepositoryLinkPullRequestRequest(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-ProcessBitbucketCloudWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessBitbucketCloudWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessBitbucketCloudWebhookRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessBitbucketCloudWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessBitbucketDataCenterWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessBitbucketDataCenterWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessBitbucketDataCenterWebhookRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessBitbucketDataCenterWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitHubEnterpriseWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitHubEnterpriseWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitHubEnterpriseWebhookRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessGitHubEnterpriseWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitLabEnterpriseWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitLabEnterpriseWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitLabEnterpriseWebhookRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessGitLabEnterpriseWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-ProcessGitLabWebhookRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessGitLabWebhookRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessGitLabWebhookRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessGitLabWebhookRequest(od);
    });
  });

  unittest.group('obj-schema-Projects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Projects.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjects(od);
    });
  });

  unittest.group('obj-schema-ProviderOAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProviderOAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProviderOAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProviderOAuthConfig(od);
    });
  });

  unittest.group('obj-schema-ProxyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProxyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProxyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProxyConfig(od);
    });
  });

  unittest.group('obj-schema-PullRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullRequest(od);
    });
  });

  unittest.group('obj-schema-PullRequestComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullRequestComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullRequestComment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullRequestComment(od);
    });
  });

  unittest.group('obj-schema-PullRequestReviewComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullRequestReviewComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullRequestReviewComment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullRequestReviewComment(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-SCMCommit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSCMCommit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SCMCommit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSCMCommit(od);
    });
  });

  unittest.group('obj-schema-SecureSourceManagerInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecureSourceManagerInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecureSourceManagerInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecureSourceManagerInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceDirectoryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-StartOAuthResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartOAuthResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartOAuthResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartOAuthResponse(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.User.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserCredential.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserCredential(od);
    });
  });

  unittest.group('obj-schema-UserRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserRepository.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserRepository(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed50();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAccountConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_request = buildAccountConnector();
      final arg_parent = 'foo';
      final arg_accountConnectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccountConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        accountConnectorId: arg_accountConnectorId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchUserRepositories', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_accountConnector = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_repository = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['repository']!.first,
            unittest.equals(arg_repository),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchUserRepositoriesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchUserRepositories(
        arg_accountConnector,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        repository: arg_repository,
        $fields: arg_$fields,
      );
      checkFetchUserRepositoriesResponse(
        response as api.FetchUserRepositoriesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccountConnector());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAccountConnector(response as api.AccountConnector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAccountConnectorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAccountConnectorsResponse(
        response as api.ListAccountConnectorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors;
      final arg_request = buildAccountConnector();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccountConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAccountConnectorsUsersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteSelf', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deleteSelf(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchAccessToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_request = buildFetchAccessTokenRequest();
      final arg_accountConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FetchAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchAccessTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchAccessToken(
        arg_request,
        arg_accountConnector,
        $fields: arg_$fields,
      );
      checkFetchAccessTokenResponse(response as api.FetchAccessTokenResponse);
    });

    unittest.test('method--fetchSelf', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchSelf(arg_name, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--finishOAuthFlow', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_accountConnector = 'foo';
      final arg_googleOauthParams_scopes = buildUnnamed51();
      final arg_googleOauthParams_ticket = 'foo';
      final arg_googleOauthParams_versionInfo = 'foo';
      final arg_oauthParams_code = 'foo';
      final arg_oauthParams_ticket = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['googleOauthParams.scopes']!,
            unittest.equals(arg_googleOauthParams_scopes),
          );
          unittest.expect(
            queryMap['googleOauthParams.ticket']!.first,
            unittest.equals(arg_googleOauthParams_ticket),
          );
          unittest.expect(
            queryMap['googleOauthParams.versionInfo']!.first,
            unittest.equals(arg_googleOauthParams_versionInfo),
          );
          unittest.expect(
            queryMap['oauthParams.code']!.first,
            unittest.equals(arg_oauthParams_code),
          );
          unittest.expect(
            queryMap['oauthParams.ticket']!.first,
            unittest.equals(arg_oauthParams_ticket),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFinishOAuthResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.finishOAuthFlow(
        arg_accountConnector,
        googleOauthParams_scopes: arg_googleOauthParams_scopes,
        googleOauthParams_ticket: arg_googleOauthParams_ticket,
        googleOauthParams_versionInfo: arg_googleOauthParams_versionInfo,
        oauthParams_code: arg_oauthParams_code,
        oauthParams_ticket: arg_oauthParams_ticket,
        $fields: arg_$fields,
      );
      checkFinishOAuthResponse(response as api.FinishOAuthResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListUsersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListUsersResponse(response as api.ListUsersResponse);
    });

    unittest.test('method--startOAuthFlow', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.accountConnectors.users;
      final arg_accountConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildStartOAuthResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.startOAuthFlow(
        arg_accountConnector,
        $fields: arg_$fields,
      );
      checkStartOAuthResponse(response as api.StartOAuthResponse);
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        connectionId: arg_connectionId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchGitHubInstallations', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_connection = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchGitHubInstallationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchGitHubInstallations(
        arg_connection,
        $fields: arg_$fields,
      );
      checkFetchGitHubInstallationsResponse(
        response as api.FetchGitHubInstallationsResponse,
      );
    });

    unittest.test('method--fetchLinkableGitRepositories', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_connection = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchLinkableGitRepositoriesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchLinkableGitRepositories(
        arg_connection,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchLinkableGitRepositoriesResponse(
        response as api.FetchLinkableGitRepositoriesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConnection());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListConnectionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--processGitHubEnterpriseWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.connections;
      final arg_request = buildProcessGitHubEnterpriseWebhookRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProcessGitHubEnterpriseWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processGitHubEnterpriseWebhook(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsGitRepositoryLinksResource', () {
    unittest.test('method--addPullRequestComment', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildAddGitRepositoryLinkPullRequestCommentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.AddGitRepositoryLinkPullRequestCommentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkAddGitRepositoryLinkPullRequestCommentRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPullRequestComment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addPullRequestComment(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPullRequestComment(response as api.PullRequestComment);
    });

    unittest.test('method--addPullRequestReviewComment', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request =
          buildAddGitRepositoryLinkPullRequestReviewCommentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.AddGitRepositoryLinkPullRequestReviewCommentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkAddGitRepositoryLinkPullRequestReviewCommentRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPullRequestReviewComment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addPullRequestReviewComment(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPullRequestReviewComment(response as api.PullRequestReviewComment);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildGitRepositoryLink();
      final arg_parent = 'foo';
      final arg_gitRepositoryLinkId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GitRepositoryLink.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        gitRepositoryLinkId: arg_gitRepositoryLinkId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--diffCommit', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_baseSha = 'foo';
      final arg_headSha = 'foo';
      final arg_pathFilters = buildUnnamed52();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['baseSha']!.first,
            unittest.equals(arg_baseSha),
          );
          unittest.expect(
            queryMap['headSha']!.first,
            unittest.equals(arg_headSha),
          );
          unittest.expect(
            queryMap['pathFilters']!,
            unittest.equals(arg_pathFilters),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildDiffGitRepositoryLinkCommitResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.diffCommit(
        arg_name,
        baseSha: arg_baseSha,
        headSha: arg_headSha,
        pathFilters: arg_pathFilters,
        $fields: arg_$fields,
      );
      checkDiffGitRepositoryLinkCommitResponse(
        response as api.DiffGitRepositoryLinkCommitResponse,
      );
    });

    unittest.test('method--fetchCommit', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_commitSha = 'foo';
      final arg_pathFilters = buildUnnamed53();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['commitSha']!.first,
            unittest.equals(arg_commitSha),
          );
          unittest.expect(
            queryMap['pathFilters']!,
            unittest.equals(arg_pathFilters),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchGitRepositoryLinkCommitResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchCommit(
        arg_name,
        commitSha: arg_commitSha,
        pathFilters: arg_pathFilters,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkFetchGitRepositoryLinkCommitResponse(
        response as api.FetchGitRepositoryLinkCommitResponse,
      );
    });

    unittest.test('method--fetchCommitList', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_ref = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['ref']!.first, unittest.equals(arg_ref));
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchGitRepositoryLinkCommitListResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchCommitList(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        ref: arg_ref,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkFetchGitRepositoryLinkCommitListResponse(
        response as api.FetchGitRepositoryLinkCommitListResponse,
      );
    });

    unittest.test('method--fetchFileBlame', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_firstLine = 42;
      final arg_lastLine = 42;
      final arg_path = 'foo';
      final arg_ref = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            core.int.parse(queryMap['firstLine']!.first),
            unittest.equals(arg_firstLine),
          );
          unittest.expect(
            core.int.parse(queryMap['lastLine']!.first),
            unittest.equals(arg_lastLine),
          );
          unittest.expect(queryMap['path']!.first, unittest.equals(arg_path));
          unittest.expect(queryMap['ref']!.first, unittest.equals(arg_ref));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchGitRepositoryLinkFileBlameResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchFileBlame(
        arg_name,
        firstLine: arg_firstLine,
        lastLine: arg_lastLine,
        path: arg_path,
        ref: arg_ref,
        $fields: arg_$fields,
      );
      checkFetchGitRepositoryLinkFileBlameResponse(
        response as api.FetchGitRepositoryLinkFileBlameResponse,
      );
    });

    unittest.test('method--fetchGitRefs', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_gitRepositoryLink = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_refType = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchGitRefsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchGitRefs(
        arg_gitRepositoryLink,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        refType: arg_refType,
        $fields: arg_$fields,
      );
      checkFetchGitRefsResponse(response as api.FetchGitRefsResponse);
    });

    unittest.test('method--fetchPullRequest', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_pullRequestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['pullRequestId']!.first,
            unittest.equals(arg_pullRequestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPullRequest());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchPullRequest(
        arg_name,
        pullRequestId: arg_pullRequestId,
        $fields: arg_$fields,
      );
      checkPullRequest(response as api.PullRequest);
    });

    unittest.test('method--fetchPullRequestList', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildFetchGitRepositoryLinkPullRequestListResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchPullRequestList(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkFetchGitRepositoryLinkPullRequestListResponse(
        response as api.FetchGitRepositoryLinkPullRequestListResponse,
      );
    });

    unittest.test('method--fetchReadToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildFetchReadTokenRequest();
      final arg_gitRepositoryLink = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FetchReadTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchReadTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchReadToken(
        arg_request,
        arg_gitRepositoryLink,
        $fields: arg_$fields,
      );
      checkFetchReadTokenResponse(response as api.FetchReadTokenResponse);
    });

    unittest.test('method--fetchReadWriteToken', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildFetchReadWriteTokenRequest();
      final arg_gitRepositoryLink = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FetchReadWriteTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFetchReadWriteTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchReadWriteToken(
        arg_request,
        arg_gitRepositoryLink,
        $fields: arg_$fields,
      );
      checkFetchReadWriteTokenResponse(
        response as api.FetchReadWriteTokenResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGitRepositoryLink());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGitRepositoryLink(response as api.GitRepositoryLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListGitRepositoryLinksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGitRepositoryLinksResponse(
        response as api.ListGitRepositoryLinksResponse,
      );
    });

    unittest.test('method--modifyPullRequest', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildModifyGitRepositoryLinkPullRequestRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyGitRepositoryLinkPullRequestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyGitRepositoryLinkPullRequestRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPullRequest());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyPullRequest(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPullRequest(response as api.PullRequest);
    });

    unittest.test('method--openPullRequest', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildOpenGitRepositoryLinkPullRequestRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OpenGitRepositoryLinkPullRequestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOpenGitRepositoryLinkPullRequestRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPullRequest());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.openPullRequest(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkPullRequest(response as api.PullRequest);
    });

    unittest.test('method--processBitbucketCloudWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildProcessBitbucketCloudWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProcessBitbucketCloudWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processBitbucketCloudWebhook(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processBitbucketDataCenterWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildProcessBitbucketDataCenterWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProcessBitbucketDataCenterWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processBitbucketDataCenterWebhook(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processGitLabEnterpriseWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildProcessGitLabEnterpriseWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProcessGitLabEnterpriseWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processGitLabEnterpriseWebhook(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--processGitLabWebhook', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.connections.gitRepositoryLinks;
      final arg_request = buildProcessGitLabWebhookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ProcessGitLabWebhookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processGitLabWebhook(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.insightsConfigs;
      final arg_request = buildInsightsConfig();
      final arg_parent = 'foo';
      final arg_insightsConfigId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InsightsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        insightsConfigId: arg_insightsConfigId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.insightsConfigs;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.insightsConfigs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildInsightsConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInsightsConfig(response as api.InsightsConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.insightsConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListInsightsConfigsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInsightsConfigsResponse(
        response as api.ListInsightsConfigsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(
        mock,
      ).projects.locations.insightsConfigs;
      final arg_request = buildInsightsConfig();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InsightsConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsInsightsConfigsDeploymentEventsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.DeveloperConnectApi(
          mock,
        ).projects.locations.insightsConfigs.deploymentEvents;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildDeploymentEvent());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkDeploymentEvent(response as api.DeploymentEvent);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.DeveloperConnectApi(
          mock,
        ).projects.locations.insightsConfigs.deploymentEvents;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListDeploymentEventsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListDeploymentEventsResponse(
          response as api.ListDeploymentEventsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeveloperConnectApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
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
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
