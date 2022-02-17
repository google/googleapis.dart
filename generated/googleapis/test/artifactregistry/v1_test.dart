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

import 'package:googleapis/artifactregistry/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed0(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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

core.int buildCounterDockerImage = 0;
api.DockerImage buildDockerImage() {
  final o = api.DockerImage();
  buildCounterDockerImage++;
  if (buildCounterDockerImage < 3) {
    o.buildTime = 'foo';
    o.imageSizeBytes = 'foo';
    o.mediaType = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed1();
    o.uploadTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterDockerImage--;
  return o;
}

void checkDockerImage(api.DockerImage o) {
  buildCounterDockerImage++;
  if (buildCounterDockerImage < 3) {
    unittest.expect(
      o.buildTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.tags!);
    unittest.expect(
      o.uploadTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDockerImage--;
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

core.List<api.Hash> buildUnnamed2() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed2(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterGoogleDevtoolsArtifactregistryV1File = 0;
api.GoogleDevtoolsArtifactregistryV1File
    buildGoogleDevtoolsArtifactregistryV1File() {
  final o = api.GoogleDevtoolsArtifactregistryV1File();
  buildCounterGoogleDevtoolsArtifactregistryV1File++;
  if (buildCounterGoogleDevtoolsArtifactregistryV1File < 3) {
    o.createTime = 'foo';
    o.hashes = buildUnnamed2();
    o.name = 'foo';
    o.owner = 'foo';
    o.sizeBytes = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleDevtoolsArtifactregistryV1File--;
  return o;
}

void checkGoogleDevtoolsArtifactregistryV1File(
    api.GoogleDevtoolsArtifactregistryV1File o) {
  buildCounterGoogleDevtoolsArtifactregistryV1File++;
  if (buildCounterGoogleDevtoolsArtifactregistryV1File < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.hashes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.owner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleDevtoolsArtifactregistryV1File--;
}

core.int buildCounterHash = 0;
api.Hash buildHash() {
  final o = api.Hash();
  buildCounterHash++;
  if (buildCounterHash < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterHash--;
  return o;
}

void checkHash(api.Hash o) {
  buildCounterHash++;
  if (buildCounterHash < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHash--;
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

core.int buildCounterImportAptArtifactsGcsSource = 0;
api.ImportAptArtifactsGcsSource buildImportAptArtifactsGcsSource() {
  final o = api.ImportAptArtifactsGcsSource();
  buildCounterImportAptArtifactsGcsSource++;
  if (buildCounterImportAptArtifactsGcsSource < 3) {
    o.uris = buildUnnamed3();
    o.useWildcards = true;
  }
  buildCounterImportAptArtifactsGcsSource--;
  return o;
}

void checkImportAptArtifactsGcsSource(api.ImportAptArtifactsGcsSource o) {
  buildCounterImportAptArtifactsGcsSource++;
  if (buildCounterImportAptArtifactsGcsSource < 3) {
    checkUnnamed3(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportAptArtifactsGcsSource--;
}

core.int buildCounterImportAptArtifactsRequest = 0;
api.ImportAptArtifactsRequest buildImportAptArtifactsRequest() {
  final o = api.ImportAptArtifactsRequest();
  buildCounterImportAptArtifactsRequest++;
  if (buildCounterImportAptArtifactsRequest < 3) {
    o.gcsSource = buildImportAptArtifactsGcsSource();
  }
  buildCounterImportAptArtifactsRequest--;
  return o;
}

void checkImportAptArtifactsRequest(api.ImportAptArtifactsRequest o) {
  buildCounterImportAptArtifactsRequest++;
  if (buildCounterImportAptArtifactsRequest < 3) {
    checkImportAptArtifactsGcsSource(o.gcsSource!);
  }
  buildCounterImportAptArtifactsRequest--;
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

core.int buildCounterImportGooGetArtifactsGcsSource = 0;
api.ImportGooGetArtifactsGcsSource buildImportGooGetArtifactsGcsSource() {
  final o = api.ImportGooGetArtifactsGcsSource();
  buildCounterImportGooGetArtifactsGcsSource++;
  if (buildCounterImportGooGetArtifactsGcsSource < 3) {
    o.uris = buildUnnamed4();
    o.useWildcards = true;
  }
  buildCounterImportGooGetArtifactsGcsSource--;
  return o;
}

void checkImportGooGetArtifactsGcsSource(api.ImportGooGetArtifactsGcsSource o) {
  buildCounterImportGooGetArtifactsGcsSource++;
  if (buildCounterImportGooGetArtifactsGcsSource < 3) {
    checkUnnamed4(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportGooGetArtifactsGcsSource--;
}

core.int buildCounterImportGooGetArtifactsRequest = 0;
api.ImportGooGetArtifactsRequest buildImportGooGetArtifactsRequest() {
  final o = api.ImportGooGetArtifactsRequest();
  buildCounterImportGooGetArtifactsRequest++;
  if (buildCounterImportGooGetArtifactsRequest < 3) {
    o.gcsSource = buildImportGooGetArtifactsGcsSource();
  }
  buildCounterImportGooGetArtifactsRequest--;
  return o;
}

void checkImportGooGetArtifactsRequest(api.ImportGooGetArtifactsRequest o) {
  buildCounterImportGooGetArtifactsRequest++;
  if (buildCounterImportGooGetArtifactsRequest < 3) {
    checkImportGooGetArtifactsGcsSource(o.gcsSource!);
  }
  buildCounterImportGooGetArtifactsRequest--;
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

core.int buildCounterImportYumArtifactsGcsSource = 0;
api.ImportYumArtifactsGcsSource buildImportYumArtifactsGcsSource() {
  final o = api.ImportYumArtifactsGcsSource();
  buildCounterImportYumArtifactsGcsSource++;
  if (buildCounterImportYumArtifactsGcsSource < 3) {
    o.uris = buildUnnamed5();
    o.useWildcards = true;
  }
  buildCounterImportYumArtifactsGcsSource--;
  return o;
}

void checkImportYumArtifactsGcsSource(api.ImportYumArtifactsGcsSource o) {
  buildCounterImportYumArtifactsGcsSource++;
  if (buildCounterImportYumArtifactsGcsSource < 3) {
    checkUnnamed5(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportYumArtifactsGcsSource--;
}

core.int buildCounterImportYumArtifactsRequest = 0;
api.ImportYumArtifactsRequest buildImportYumArtifactsRequest() {
  final o = api.ImportYumArtifactsRequest();
  buildCounterImportYumArtifactsRequest++;
  if (buildCounterImportYumArtifactsRequest < 3) {
    o.gcsSource = buildImportYumArtifactsGcsSource();
  }
  buildCounterImportYumArtifactsRequest--;
  return o;
}

void checkImportYumArtifactsRequest(api.ImportYumArtifactsRequest o) {
  buildCounterImportYumArtifactsRequest++;
  if (buildCounterImportYumArtifactsRequest < 3) {
    checkImportYumArtifactsGcsSource(o.gcsSource!);
  }
  buildCounterImportYumArtifactsRequest--;
}

core.List<api.DockerImage> buildUnnamed6() => [
      buildDockerImage(),
      buildDockerImage(),
    ];

void checkUnnamed6(core.List<api.DockerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDockerImage(o[0]);
  checkDockerImage(o[1]);
}

core.int buildCounterListDockerImagesResponse = 0;
api.ListDockerImagesResponse buildListDockerImagesResponse() {
  final o = api.ListDockerImagesResponse();
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    o.dockerImages = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListDockerImagesResponse--;
  return o;
}

void checkListDockerImagesResponse(api.ListDockerImagesResponse o) {
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    checkUnnamed6(o.dockerImages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDockerImagesResponse--;
}

core.List<api.GoogleDevtoolsArtifactregistryV1File> buildUnnamed7() => [
      buildGoogleDevtoolsArtifactregistryV1File(),
      buildGoogleDevtoolsArtifactregistryV1File(),
    ];

void checkUnnamed7(core.List<api.GoogleDevtoolsArtifactregistryV1File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsArtifactregistryV1File(o[0]);
  checkGoogleDevtoolsArtifactregistryV1File(o[1]);
}

core.int buildCounterListFilesResponse = 0;
api.ListFilesResponse buildListFilesResponse() {
  final o = api.ListFilesResponse();
  buildCounterListFilesResponse++;
  if (buildCounterListFilesResponse < 3) {
    o.files = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListFilesResponse--;
  return o;
}

void checkListFilesResponse(api.ListFilesResponse o) {
  buildCounterListFilesResponse++;
  if (buildCounterListFilesResponse < 3) {
    checkUnnamed7(o.files!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFilesResponse--;
}

core.List<api.Package> buildUnnamed8() => [
      buildPackage(),
      buildPackage(),
    ];

void checkUnnamed8(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.int buildCounterListPackagesResponse = 0;
api.ListPackagesResponse buildListPackagesResponse() {
  final o = api.ListPackagesResponse();
  buildCounterListPackagesResponse++;
  if (buildCounterListPackagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.packages = buildUnnamed8();
  }
  buildCounterListPackagesResponse--;
  return o;
}

void checkListPackagesResponse(api.ListPackagesResponse o) {
  buildCounterListPackagesResponse++;
  if (buildCounterListPackagesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.packages!);
  }
  buildCounterListPackagesResponse--;
}

core.List<api.Repository> buildUnnamed9() => [
      buildRepository(),
      buildRepository(),
    ];

void checkUnnamed9(core.List<api.Repository> o) {
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
    o.repositories = buildUnnamed9();
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
    checkUnnamed9(o.repositories!);
  }
  buildCounterListRepositoriesResponse--;
}

core.List<api.Tag> buildUnnamed10() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed10(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterListTagsResponse = 0;
api.ListTagsResponse buildListTagsResponse() {
  final o = api.ListTagsResponse();
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tags = buildUnnamed10();
  }
  buildCounterListTagsResponse--;
  return o;
}

void checkListTagsResponse(api.ListTagsResponse o) {
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.tags!);
  }
  buildCounterListTagsResponse--;
}

core.List<api.Version> buildUnnamed11() => [
      buildVersion(),
      buildVersion(),
    ];

void checkUnnamed11(core.List<api.Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersion(o[0]);
  checkVersion(o[1]);
}

core.int buildCounterListVersionsResponse = 0;
api.ListVersionsResponse buildListVersionsResponse() {
  final o = api.ListVersionsResponse();
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed11();
  }
  buildCounterListVersionsResponse--;
  return o;
}

void checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.versions!);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterMavenRepositoryConfig = 0;
api.MavenRepositoryConfig buildMavenRepositoryConfig() {
  final o = api.MavenRepositoryConfig();
  buildCounterMavenRepositoryConfig++;
  if (buildCounterMavenRepositoryConfig < 3) {
    o.allowSnapshotOverwrites = true;
    o.versionPolicy = 'foo';
  }
  buildCounterMavenRepositoryConfig--;
  return o;
}

void checkMavenRepositoryConfig(api.MavenRepositoryConfig o) {
  buildCounterMavenRepositoryConfig++;
  if (buildCounterMavenRepositoryConfig < 3) {
    unittest.expect(o.allowSnapshotOverwrites!, unittest.isTrue);
    unittest.expect(
      o.versionPolicy!,
      unittest.equals('foo'),
    );
  }
  buildCounterMavenRepositoryConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.response = buildUnnamed13();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  final o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackage--;
}

core.List<api.Binding> buildUnnamed14() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed14(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed14();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed14(o.bindings!);
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

core.int buildCounterProjectSettings = 0;
api.ProjectSettings buildProjectSettings() {
  final o = api.ProjectSettings();
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    o.legacyRedirectionState = 'foo';
    o.name = 'foo';
  }
  buildCounterProjectSettings--;
  return o;
}

void checkProjectSettings(api.ProjectSettings o) {
  buildCounterProjectSettings++;
  if (buildCounterProjectSettings < 3) {
    unittest.expect(
      o.legacyRedirectionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectSettings--;
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

core.int buildCounterRepository = 0;
api.Repository buildRepository() {
  final o = api.Repository();
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.format = 'foo';
    o.kmsKeyName = 'foo';
    o.labels = buildUnnamed15();
    o.mavenConfig = buildMavenRepositoryConfig();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRepository--;
  return o;
}

void checkRepository(api.Repository o) {
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.labels!);
    checkMavenRepositoryConfig(o.mavenConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
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
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
      buildUnnamed16(),
      buildUnnamed16(),
    ];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed17();
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
    checkUnnamed17(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTag = 0;
api.Tag buildTag() {
  final o = api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterTag--;
  return o;
}

void checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterTag--;
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed18();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed18(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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
    o.permissions = buildUnnamed19();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed19(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUploadAptArtifactMediaResponse = 0;
api.UploadAptArtifactMediaResponse buildUploadAptArtifactMediaResponse() {
  final o = api.UploadAptArtifactMediaResponse();
  buildCounterUploadAptArtifactMediaResponse++;
  if (buildCounterUploadAptArtifactMediaResponse < 3) {
    o.operation = buildOperation();
  }
  buildCounterUploadAptArtifactMediaResponse--;
  return o;
}

void checkUploadAptArtifactMediaResponse(api.UploadAptArtifactMediaResponse o) {
  buildCounterUploadAptArtifactMediaResponse++;
  if (buildCounterUploadAptArtifactMediaResponse < 3) {
    checkOperation(o.operation!);
  }
  buildCounterUploadAptArtifactMediaResponse--;
}

core.int buildCounterUploadAptArtifactRequest = 0;
api.UploadAptArtifactRequest buildUploadAptArtifactRequest() {
  final o = api.UploadAptArtifactRequest();
  buildCounterUploadAptArtifactRequest++;
  if (buildCounterUploadAptArtifactRequest < 3) {}
  buildCounterUploadAptArtifactRequest--;
  return o;
}

void checkUploadAptArtifactRequest(api.UploadAptArtifactRequest o) {
  buildCounterUploadAptArtifactRequest++;
  if (buildCounterUploadAptArtifactRequest < 3) {}
  buildCounterUploadAptArtifactRequest--;
}

core.int buildCounterUploadGooGetArtifactMediaResponse = 0;
api.UploadGooGetArtifactMediaResponse buildUploadGooGetArtifactMediaResponse() {
  final o = api.UploadGooGetArtifactMediaResponse();
  buildCounterUploadGooGetArtifactMediaResponse++;
  if (buildCounterUploadGooGetArtifactMediaResponse < 3) {
    o.operation = buildOperation();
  }
  buildCounterUploadGooGetArtifactMediaResponse--;
  return o;
}

void checkUploadGooGetArtifactMediaResponse(
    api.UploadGooGetArtifactMediaResponse o) {
  buildCounterUploadGooGetArtifactMediaResponse++;
  if (buildCounterUploadGooGetArtifactMediaResponse < 3) {
    checkOperation(o.operation!);
  }
  buildCounterUploadGooGetArtifactMediaResponse--;
}

core.int buildCounterUploadGooGetArtifactRequest = 0;
api.UploadGooGetArtifactRequest buildUploadGooGetArtifactRequest() {
  final o = api.UploadGooGetArtifactRequest();
  buildCounterUploadGooGetArtifactRequest++;
  if (buildCounterUploadGooGetArtifactRequest < 3) {}
  buildCounterUploadGooGetArtifactRequest--;
  return o;
}

void checkUploadGooGetArtifactRequest(api.UploadGooGetArtifactRequest o) {
  buildCounterUploadGooGetArtifactRequest++;
  if (buildCounterUploadGooGetArtifactRequest < 3) {}
  buildCounterUploadGooGetArtifactRequest--;
}

core.int buildCounterUploadYumArtifactMediaResponse = 0;
api.UploadYumArtifactMediaResponse buildUploadYumArtifactMediaResponse() {
  final o = api.UploadYumArtifactMediaResponse();
  buildCounterUploadYumArtifactMediaResponse++;
  if (buildCounterUploadYumArtifactMediaResponse < 3) {
    o.operation = buildOperation();
  }
  buildCounterUploadYumArtifactMediaResponse--;
  return o;
}

void checkUploadYumArtifactMediaResponse(api.UploadYumArtifactMediaResponse o) {
  buildCounterUploadYumArtifactMediaResponse++;
  if (buildCounterUploadYumArtifactMediaResponse < 3) {
    checkOperation(o.operation!);
  }
  buildCounterUploadYumArtifactMediaResponse--;
}

core.int buildCounterUploadYumArtifactRequest = 0;
api.UploadYumArtifactRequest buildUploadYumArtifactRequest() {
  final o = api.UploadYumArtifactRequest();
  buildCounterUploadYumArtifactRequest++;
  if (buildCounterUploadYumArtifactRequest < 3) {}
  buildCounterUploadYumArtifactRequest--;
  return o;
}

void checkUploadYumArtifactRequest(api.UploadYumArtifactRequest o) {
  buildCounterUploadYumArtifactRequest++;
  if (buildCounterUploadYumArtifactRequest < 3) {}
  buildCounterUploadYumArtifactRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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

core.List<api.Tag> buildUnnamed21() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed21(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.metadata = buildUnnamed20();
    o.name = 'foo';
    o.relatedTags = buildUnnamed21();
    o.updateTime = 'foo';
  }
  buildCounterVersion--;
  return o;
}

void checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.relatedTags!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersion--;
}

void main() {
  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-DockerImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDockerImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DockerImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDockerImage(od);
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

  unittest.group('obj-schema-GoogleDevtoolsArtifactregistryV1File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDevtoolsArtifactregistryV1File();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDevtoolsArtifactregistryV1File.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDevtoolsArtifactregistryV1File(od);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hash.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHash(od);
    });
  });

  unittest.group('obj-schema-ImportAptArtifactsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAptArtifactsGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAptArtifactsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsGcsSource(od);
    });
  });

  unittest.group('obj-schema-ImportAptArtifactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAptArtifactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAptArtifactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsRequest(od);
    });
  });

  unittest.group('obj-schema-ImportGooGetArtifactsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportGooGetArtifactsGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportGooGetArtifactsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportGooGetArtifactsGcsSource(od);
    });
  });

  unittest.group('obj-schema-ImportGooGetArtifactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportGooGetArtifactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportGooGetArtifactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportGooGetArtifactsRequest(od);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportYumArtifactsGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportYumArtifactsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsGcsSource(od);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportYumArtifactsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportYumArtifactsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsRequest(od);
    });
  });

  unittest.group('obj-schema-ListDockerImagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDockerImagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDockerImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDockerImagesResponse(od);
    });
  });

  unittest.group('obj-schema-ListFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPackagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPackagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPackagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPackagesResponse(od);
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

  unittest.group('obj-schema-ListTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTagsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-MavenRepositoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMavenRepositoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MavenRepositoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMavenRepositoryConfig(od);
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

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Package.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPackage(od);
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

  unittest.group('obj-schema-ProjectSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectSettings(od);
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

  unittest.group('obj-schema-Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTag(od);
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

  unittest.group('obj-schema-UploadAptArtifactMediaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadAptArtifactMediaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadAptArtifactMediaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAptArtifactMediaResponse(od);
    });
  });

  unittest.group('obj-schema-UploadAptArtifactRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadAptArtifactRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadAptArtifactRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAptArtifactRequest(od);
    });
  });

  unittest.group('obj-schema-UploadGooGetArtifactMediaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadGooGetArtifactMediaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadGooGetArtifactMediaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadGooGetArtifactMediaResponse(od);
    });
  });

  unittest.group('obj-schema-UploadGooGetArtifactRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadGooGetArtifactRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadGooGetArtifactRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadGooGetArtifactRequest(od);
    });
  });

  unittest.group('obj-schema-UploadYumArtifactMediaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadYumArtifactMediaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadYumArtifactMediaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadYumArtifactMediaResponse(od);
    });
  });

  unittest.group('obj-schema-UploadYumArtifactRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadYumArtifactRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadYumArtifactRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadYumArtifactRequest(od);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getProjectSettings', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getProjectSettings(arg_name, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });

    unittest.test('method--updateProjectSettings', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects;
      final arg_request = buildProjectSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProjectSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProjectSettings(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildProjectSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateProjectSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProjectSettings(response as api.ProjectSettings);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_request = buildRepository();
      final arg_parent = 'foo';
      final arg_repositoryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Repository.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepository(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildRepository());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRepository(response as api.Repository);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRepositoriesResponse(response as api.ListRepositoriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_request = buildRepository();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Repository.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepository(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildRepository());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkRepository(response as api.Repository);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesAptArtifactsResource',
      () {
    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .aptArtifacts;
      final arg_request = buildImportAptArtifactsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportAptArtifactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportAptArtifactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .aptArtifacts;
      final arg_request = buildUploadAptArtifactRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UploadAptArtifactRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUploadAptArtifactRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildUploadAptArtifactMediaResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkUploadAptArtifactMediaResponse(
          response as api.UploadAptArtifactMediaResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesDockerImagesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .dockerImages;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildDockerImage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDockerImage(response as api.DockerImage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .dockerImages;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildListDockerImagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDockerImagesResponse(response as api.ListDockerImagesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesFilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ArtifactRegistryApi(mock).projects.locations.repositories.files;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp =
            convert.json.encode(buildGoogleDevtoolsArtifactregistryV1File());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleDevtoolsArtifactregistryV1File(
          response as api.GoogleDevtoolsArtifactregistryV1File);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ArtifactRegistryApi(mock).projects.locations.repositories.files;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildListFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFilesResponse(response as api.ListFilesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRepositoriesGooGetArtifactsResource', () {
    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .gooGetArtifacts;
      final arg_request = buildImportGooGetArtifactsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportGooGetArtifactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportGooGetArtifactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRepositoriesGoogetArtifactsResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .googetArtifacts;
      final arg_request = buildUploadGooGetArtifactRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UploadGooGetArtifactRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUploadGooGetArtifactRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp =
            convert.json.encode(buildUploadGooGetArtifactMediaResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkUploadGooGetArtifactMediaResponse(
          response as api.UploadGooGetArtifactMediaResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesPackagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildPackage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPackage(response as api.Package);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildListPackagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPackagesResponse(response as api.ListPackagesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesPackagesTagsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .tags;
      final arg_request = buildTag();
      final arg_parent = 'foo';
      final arg_tagId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTag(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['tagId']!.first,
          unittest.equals(arg_tagId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagId: arg_tagId, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .tags;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .tags;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .tags;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTagsResponse(response as api.ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .tags;
      final arg_request = buildTag();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTag(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsRepositoriesPackagesVersionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .versions;
      final arg_name = 'foo';
      final arg_force = true;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
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
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .versions;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkVersion(response as api.Version);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .packages
          .versions;
      final arg_parent = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListVersionsResponse(response as api.ListVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesYumArtifactsResource',
      () {
    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .yumArtifacts;
      final arg_request = buildImportYumArtifactsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportYumArtifactsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportYumArtifactsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .yumArtifacts;
      final arg_request = buildUploadYumArtifactRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UploadYumArtifactRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUploadYumArtifactRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildUploadYumArtifactMediaResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkUploadYumArtifactMediaResponse(
          response as api.UploadYumArtifactMediaResponse);
    });
  });
}
