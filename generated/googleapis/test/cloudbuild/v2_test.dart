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
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/cloudbuild/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<api.CreateRepositoryRequest> buildUnnamed2() => [
      buildCreateRepositoryRequest(),
      buildCreateRepositoryRequest(),
    ];

void checkUnnamed2(core.List<api.CreateRepositoryRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreateRepositoryRequest(o[0]);
  checkCreateRepositoryRequest(o[1]);
}

core.int buildCounterBatchCreateRepositoriesRequest = 0;
api.BatchCreateRepositoriesRequest buildBatchCreateRepositoriesRequest() {
  final o = api.BatchCreateRepositoriesRequest();
  buildCounterBatchCreateRepositoriesRequest++;
  if (buildCounterBatchCreateRepositoriesRequest < 3) {
    o.requests = buildUnnamed2();
  }
  buildCounterBatchCreateRepositoriesRequest--;
  return o;
}

void checkBatchCreateRepositoriesRequest(api.BatchCreateRepositoriesRequest o) {
  buildCounterBatchCreateRepositoriesRequest++;
  if (buildCounterBatchCreateRepositoriesRequest < 3) {
    checkUnnamed2(o.requests!);
  }
  buildCounterBatchCreateRepositoriesRequest--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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
    o.serviceDirectoryConfig =
        buildGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig();
    o.sslCa = 'foo';
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
    checkGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
        o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCa!,
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

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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
    o.annotations = buildUnnamed4();
    o.bitbucketCloudConfig = buildBitbucketCloudConfig();
    o.bitbucketDataCenterConfig = buildBitbucketDataCenterConfig();
    o.createTime = 'foo';
    o.disabled = true;
    o.etag = 'foo';
    o.githubConfig = buildGitHubConfig();
    o.githubEnterpriseConfig =
        buildGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig();
    o.gitlabConfig = buildGoogleDevtoolsCloudbuildV2GitLabConfig();
    o.installationState = buildInstallationState();
    o.name = 'foo';
    o.reconciling = true;
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGitHubConfig(o.githubConfig!);
    checkGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig(
        o.githubEnterpriseConfig!);
    checkGoogleDevtoolsCloudbuildV2GitLabConfig(o.gitlabConfig!);
    checkInstallationState(o.installationState!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnection--;
}

core.int buildCounterCreateRepositoryRequest = 0;
api.CreateRepositoryRequest buildCreateRepositoryRequest() {
  final o = api.CreateRepositoryRequest();
  buildCounterCreateRepositoryRequest++;
  if (buildCounterCreateRepositoryRequest < 3) {
    o.parent = 'foo';
    o.repository = buildRepository();
    o.repositoryId = 'foo';
  }
  buildCounterCreateRepositoryRequest--;
  return o;
}

void checkCreateRepositoryRequest(api.CreateRepositoryRequest o) {
  buildCounterCreateRepositoryRequest++;
  if (buildCounterCreateRepositoryRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkRepository(o.repository!);
    unittest.expect(
      o.repositoryId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateRepositoryRequest--;
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

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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
    o.refNames = buildUnnamed5();
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
    checkUnnamed5(o.refNames!);
  }
  buildCounterFetchGitRefsResponse--;
}

core.List<api.Repository> buildUnnamed6() => [
      buildRepository(),
      buildRepository(),
    ];

void checkUnnamed6(core.List<api.Repository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepository(o[0]);
  checkRepository(o[1]);
}

core.int buildCounterFetchLinkableRepositoriesResponse = 0;
api.FetchLinkableRepositoriesResponse buildFetchLinkableRepositoriesResponse() {
  final o = api.FetchLinkableRepositoriesResponse();
  buildCounterFetchLinkableRepositoriesResponse++;
  if (buildCounterFetchLinkableRepositoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repositories = buildUnnamed6();
  }
  buildCounterFetchLinkableRepositoriesResponse--;
  return o;
}

void checkFetchLinkableRepositoriesResponse(
    api.FetchLinkableRepositoriesResponse o) {
  buildCounterFetchLinkableRepositoriesResponse++;
  if (buildCounterFetchLinkableRepositoriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.repositories!);
  }
  buildCounterFetchLinkableRepositoriesResponse--;
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
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchReadWriteTokenResponse--;
}

core.int buildCounterGitHubConfig = 0;
api.GitHubConfig buildGitHubConfig() {
  final o = api.GitHubConfig();
  buildCounterGitHubConfig++;
  if (buildCounterGitHubConfig < 3) {
    o.appInstallationId = 'foo';
    o.authorizerCredential = buildOAuthCredential();
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
  }
  buildCounterGitHubConfig--;
}

core.int buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig = 0;
api.GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig
    buildGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig() {
  final o = api.GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig();
  buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig < 3) {
    o.apiKey = 'foo';
    o.appId = 'foo';
    o.appInstallationId = 'foo';
    o.appSlug = 'foo';
    o.hostUri = 'foo';
    o.privateKeySecretVersion = 'foo';
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig =
        buildGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig();
    o.sslCa = 'foo';
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig--;
  return o;
}

void checkGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig(
    api.GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig o) {
  buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig < 3) {
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
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
      o.privateKeySecretVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverVersion!,
      unittest.equals('foo'),
    );
    checkGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
        o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCa!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig--;
}

core.int buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig = 0;
api.GoogleDevtoolsCloudbuildV2GitLabConfig
    buildGoogleDevtoolsCloudbuildV2GitLabConfig() {
  final o = api.GoogleDevtoolsCloudbuildV2GitLabConfig();
  buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig < 3) {
    o.authorizerCredential = buildUserCredential();
    o.hostUri = 'foo';
    o.readAuthorizerCredential = buildUserCredential();
    o.serverVersion = 'foo';
    o.serviceDirectoryConfig =
        buildGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig();
    o.sslCa = 'foo';
    o.webhookSecretSecretVersion = 'foo';
  }
  buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig--;
  return o;
}

void checkGoogleDevtoolsCloudbuildV2GitLabConfig(
    api.GoogleDevtoolsCloudbuildV2GitLabConfig o) {
  buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig < 3) {
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
    checkGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
        o.serviceDirectoryConfig!);
    unittest.expect(
      o.sslCa!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookSecretSecretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDevtoolsCloudbuildV2GitLabConfig--;
}

core.int buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig = 0;
api.GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
    buildGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig() {
  final o = api.GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig();
  buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig < 3) {
    o.service = 'foo';
  }
  buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig--;
  return o;
}

void checkGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
    api.GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig o) {
  buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig++;
  if (buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed8() => [
      buildUnnamed7(),
      buildUnnamed7(),
    ];

void checkUnnamed8(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7(o[0]);
  checkUnnamed7(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed8();
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
    checkUnnamed8(o.extensions!);
  }
  buildCounterHttpBody--;
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

core.List<api.Connection> buildUnnamed9() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed9(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed9(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.Location> buildUnnamed10() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed10(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed10(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Repository> buildUnnamed11() => [
      buildRepository(),
      buildRepository(),
    ];

void checkUnnamed11(core.List<api.Repository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepository(o[0]);
  checkRepository(o[1]);
}

core.int buildCounterListRepositoriesResponse = 0;
api.ListRepositoriesResponse buildListRepositoriesResponse() {
  final o = api.ListRepositoriesResponse();
  buildCounterListRepositoriesResponse++;
  if (buildCounterListRepositoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repositories = buildUnnamed11();
  }
  buildCounterListRepositoriesResponse--;
  return o;
}

void checkListRepositoriesResponse(api.ListRepositoriesResponse o) {
  buildCounterListRepositoriesResponse++;
  if (buildCounterListRepositoriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.repositories!);
  }
  buildCounterListRepositoriesResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed12();
    o.locationId = 'foo';
    o.metadata = buildUnnamed13();
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
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.metadata!);
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

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed14();
    o.name = 'foo';
    o.response = buildUnnamed15();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed14(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed16() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed16(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed17() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed17(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed16();
    o.bindings = buildUnnamed17();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed16(o.auditConfigs!);
    checkUnnamed17(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
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

core.int buildCounterRepository = 0;
api.Repository buildRepository() {
  final o = api.Repository();
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    o.annotations = buildUnnamed18();
    o.createTime = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.remoteUri = 'foo';
    o.updateTime = 'foo';
    o.webhookId = 'foo';
  }
  buildCounterRepository--;
  return o;
}

void checkRepository(api.Repository o) {
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    checkUnnamed18(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteUri!,
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
  buildCounterRepository--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed20() => [
      buildUnnamed19(),
      buildUnnamed19(),
    ];

void checkUnnamed20(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed19(o[0]);
  checkUnnamed19(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed20();
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
    checkUnnamed20(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed21();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed21(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed22();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed22(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-BatchCreateRepositoriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateRepositoriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateRepositoriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateRepositoriesRequest(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
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

  unittest.group('obj-schema-CreateRepositoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateRepositoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateRepositoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateRepositoryRequest(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
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

  unittest.group('obj-schema-FetchLinkableRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchLinkableRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchLinkableRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchLinkableRepositoriesResponse(od);
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

  unittest.group('obj-schema-GitHubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsCloudbuildV2GitLabConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDevtoolsCloudbuildV2GitLabConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDevtoolsCloudbuildV2GitLabConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDevtoolsCloudbuildV2GitLabConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(od);
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

  unittest.group('obj-schema-InstallationState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallationState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallationState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallationState(od);
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

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRepositoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRepositoriesResponse(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-Repository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Repository.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepository(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
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

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
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
      final res = api.CloudBuildApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
      final res = api.CloudBuildApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_connectionId = 'foo';
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
          unittest.equals('v2/'),
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
          connectionId: arg_connectionId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.equals('v2/'),
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
          etag: arg_etag, validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchLinkableRepositories', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildFetchLinkableRepositoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchLinkableRepositories(arg_connection,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkFetchLinkableRepositoriesResponse(
          response as api.FetchLinkableRepositoriesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
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
          unittest.equals('v2/'),
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

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          unittest.equals('v2/'),
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_updateMask = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
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
          etag: arg_etag,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--processWebhook', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_request = buildHttpBody();
      final arg_parent = 'foo';
      final arg_webhookKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.HttpBody.fromJson(json as core.Map<core.String, core.dynamic>);
        checkHttpBody(obj);

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
          unittest.equals('v2/'),
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
          queryMap['webhookKey']!.first,
          unittest.equals(arg_webhookKey),
        );
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
      final response = await res.processWebhook(arg_request, arg_parent,
          webhookKey: arg_webhookKey, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.connections;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsRepositoriesResource',
      () {
    unittest.test('method--accessReadToken', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_request = buildFetchReadTokenRequest();
      final arg_repository = 'foo';
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
          unittest.equals('v2/'),
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
      final response = await res.accessReadToken(arg_request, arg_repository,
          $fields: arg_$fields);
      checkFetchReadTokenResponse(response as api.FetchReadTokenResponse);
    });

    unittest.test('method--accessReadWriteToken', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_request = buildFetchReadWriteTokenRequest();
      final arg_repository = 'foo';
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
          unittest.equals('v2/'),
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
      final response = await res.accessReadWriteToken(
          arg_request, arg_repository,
          $fields: arg_$fields);
      checkFetchReadWriteTokenResponse(
          response as api.FetchReadWriteTokenResponse);
    });

    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_request = buildBatchCreateRepositoriesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateRepositoriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateRepositoriesRequest(obj);

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
          unittest.equals('v2/'),
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
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_request = buildRepository();
      final arg_parent = 'foo';
      final arg_repositoryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Repository.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepository(obj);

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
          unittest.equals('v2/'),
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
          queryMap['repositoryId']!.first,
          unittest.equals(arg_repositoryId),
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
          repositoryId: arg_repositoryId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.equals('v2/'),
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
          etag: arg_etag, validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchGitRefs', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_repository = 'foo';
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
          unittest.equals('v2/'),
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
      final response = await res.fetchGitRefs(arg_repository,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          refType: arg_refType,
          $fields: arg_$fields);
      checkFetchGitRefsResponse(response as api.FetchGitRefsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildRepository());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRepository(response as api.Repository);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudBuildApi(mock).projects.locations.connections.repositories;
      final arg_parent = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListRepositoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRepositoriesResponse(response as api.ListRepositoriesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudBuildApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
  });
}
