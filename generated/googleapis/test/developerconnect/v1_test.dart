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

import 'package:googleapis/developerconnect/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.annotations = buildUnnamed0();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.disabled = true;
    o.etag = 'foo';
    o.githubConfig = buildGitHubConfig();
    o.installationState = buildInstallationState();
    o.labels = buildUnnamed1();
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
    checkUnnamed0(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGitHubConfig(o.githubConfig!);
    checkInstallationState(o.installationState!);
    checkUnnamed1(o.labels!);
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

core.List<api.Installation> buildUnnamed2() => [
      buildInstallation(),
      buildInstallation(),
    ];

void checkUnnamed2(core.List<api.Installation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstallation(o[0]);
  checkInstallation(o[1]);
}

core.int buildCounterFetchGitHubInstallationsResponse = 0;
api.FetchGitHubInstallationsResponse buildFetchGitHubInstallationsResponse() {
  final o = api.FetchGitHubInstallationsResponse();
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    o.installations = buildUnnamed2();
  }
  buildCounterFetchGitHubInstallationsResponse--;
  return o;
}

void checkFetchGitHubInstallationsResponse(
    api.FetchGitHubInstallationsResponse o) {
  buildCounterFetchGitHubInstallationsResponse++;
  if (buildCounterFetchGitHubInstallationsResponse < 3) {
    checkUnnamed2(o.installations!);
  }
  buildCounterFetchGitHubInstallationsResponse--;
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

core.int buildCounterFetchGitRefsResponse = 0;
api.FetchGitRefsResponse buildFetchGitRefsResponse() {
  final o = api.FetchGitRefsResponse();
  buildCounterFetchGitRefsResponse++;
  if (buildCounterFetchGitRefsResponse < 3) {
    o.nextPageToken = 'foo';
    o.refNames = buildUnnamed3();
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
    checkUnnamed3(o.refNames!);
  }
  buildCounterFetchGitRefsResponse--;
}

core.List<api.LinkableGitRepository> buildUnnamed4() => [
      buildLinkableGitRepository(),
      buildLinkableGitRepository(),
    ];

void checkUnnamed4(core.List<api.LinkableGitRepository> o) {
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
    o.linkableGitRepositories = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterFetchLinkableGitRepositoriesResponse--;
  return o;
}

void checkFetchLinkableGitRepositoriesResponse(
    api.FetchLinkableGitRepositoriesResponse o) {
  buildCounterFetchLinkableGitRepositoriesResponse++;
  if (buildCounterFetchLinkableGitRepositoriesResponse < 3) {
    checkUnnamed4(o.linkableGitRepositories!);
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

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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
    o.annotations = buildUnnamed5();
    o.cloneUri = 'foo';
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.reconciling = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGitRepositoryLink--;
  return o;
}

void checkGitRepositoryLink(api.GitRepositoryLink o) {
  buildCounterGitRepositoryLink++;
  if (buildCounterGitRepositoryLink < 3) {
    checkUnnamed5(o.annotations!);
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
    checkUnnamed6(o.labels!);
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
  buildCounterGitRepositoryLink--;
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

core.List<api.Connection> buildUnnamed7() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed7(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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
    o.connections = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed7(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.GitRepositoryLink> buildUnnamed9() => [
      buildGitRepositoryLink(),
      buildGitRepositoryLink(),
    ];

void checkUnnamed9(core.List<api.GitRepositoryLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGitRepositoryLink(o[0]);
  checkGitRepositoryLink(o[1]);
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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
    o.gitRepositoryLinks = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed10();
  }
  buildCounterListGitRepositoryLinksResponse--;
  return o;
}

void checkListGitRepositoryLinksResponse(api.ListGitRepositoryLinksResponse o) {
  buildCounterListGitRepositoryLinksResponse++;
  if (buildCounterListGitRepositoryLinksResponse < 3) {
    checkUnnamed9(o.gitRepositoryLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListGitRepositoryLinksResponse--;
}

core.List<api.Location> buildUnnamed11() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed11(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed11(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed12() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed12(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed12();
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
    checkUnnamed12(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed13();
    o.locationId = 'foo';
    o.metadata = buildUnnamed14();
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
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.metadata!);
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

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.response = buildUnnamed16();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed15(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed18() => [
      buildUnnamed17(),
      buildUnnamed17(),
    ];

void checkUnnamed18(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed17(o[0]);
  checkUnnamed17(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed18();
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
    checkUnnamed18(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

void main() {
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
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

  unittest.group('obj-schema-GitHubConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitHubConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitHubConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitHubConfig(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
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
