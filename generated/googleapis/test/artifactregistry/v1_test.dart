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

core.int buildCounterAptArtifact = 0;
api.AptArtifact buildAptArtifact() {
  final o = api.AptArtifact();
  buildCounterAptArtifact++;
  if (buildCounterAptArtifact < 3) {
    o.architecture = 'foo';
    o.component = 'foo';
    o.controlFile = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
    o.packageType = 'foo';
  }
  buildCounterAptArtifact--;
  return o;
}

void checkAptArtifact(api.AptArtifact o) {
  buildCounterAptArtifact++;
  if (buildCounterAptArtifact < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.component!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controlFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAptArtifact--;
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

core.List<core.String> buildUnnamed5061() => [
      'foo',
      'foo',
    ];

void checkUnnamed5061(core.List<core.String> o) {
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
    o.tags = buildUnnamed5061();
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
    checkUnnamed5061(o.tags!);
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

core.int buildCounterImportAptArtifactsErrorInfo = 0;
api.ImportAptArtifactsErrorInfo buildImportAptArtifactsErrorInfo() {
  final o = api.ImportAptArtifactsErrorInfo();
  buildCounterImportAptArtifactsErrorInfo++;
  if (buildCounterImportAptArtifactsErrorInfo < 3) {
    o.error = buildStatus();
    o.gcsSource = buildImportAptArtifactsGcsSource();
  }
  buildCounterImportAptArtifactsErrorInfo--;
  return o;
}

void checkImportAptArtifactsErrorInfo(api.ImportAptArtifactsErrorInfo o) {
  buildCounterImportAptArtifactsErrorInfo++;
  if (buildCounterImportAptArtifactsErrorInfo < 3) {
    checkStatus(o.error!);
    checkImportAptArtifactsGcsSource(o.gcsSource!);
  }
  buildCounterImportAptArtifactsErrorInfo--;
}

core.List<core.String> buildUnnamed5062() => [
      'foo',
      'foo',
    ];

void checkUnnamed5062(core.List<core.String> o) {
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
    o.uris = buildUnnamed5062();
    o.useWildcards = true;
  }
  buildCounterImportAptArtifactsGcsSource--;
  return o;
}

void checkImportAptArtifactsGcsSource(api.ImportAptArtifactsGcsSource o) {
  buildCounterImportAptArtifactsGcsSource++;
  if (buildCounterImportAptArtifactsGcsSource < 3) {
    checkUnnamed5062(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportAptArtifactsGcsSource--;
}

core.List<api.AptArtifact> buildUnnamed5063() => [
      buildAptArtifact(),
      buildAptArtifact(),
    ];

void checkUnnamed5063(core.List<api.AptArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAptArtifact(o[0]);
  checkAptArtifact(o[1]);
}

core.List<api.ImportAptArtifactsErrorInfo> buildUnnamed5064() => [
      buildImportAptArtifactsErrorInfo(),
      buildImportAptArtifactsErrorInfo(),
    ];

void checkUnnamed5064(core.List<api.ImportAptArtifactsErrorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportAptArtifactsErrorInfo(o[0]);
  checkImportAptArtifactsErrorInfo(o[1]);
}

core.int buildCounterImportAptArtifactsResponse = 0;
api.ImportAptArtifactsResponse buildImportAptArtifactsResponse() {
  final o = api.ImportAptArtifactsResponse();
  buildCounterImportAptArtifactsResponse++;
  if (buildCounterImportAptArtifactsResponse < 3) {
    o.aptArtifacts = buildUnnamed5063();
    o.errors = buildUnnamed5064();
  }
  buildCounterImportAptArtifactsResponse--;
  return o;
}

void checkImportAptArtifactsResponse(api.ImportAptArtifactsResponse o) {
  buildCounterImportAptArtifactsResponse++;
  if (buildCounterImportAptArtifactsResponse < 3) {
    checkUnnamed5063(o.aptArtifacts!);
    checkUnnamed5064(o.errors!);
  }
  buildCounterImportAptArtifactsResponse--;
}

core.int buildCounterImportYumArtifactsErrorInfo = 0;
api.ImportYumArtifactsErrorInfo buildImportYumArtifactsErrorInfo() {
  final o = api.ImportYumArtifactsErrorInfo();
  buildCounterImportYumArtifactsErrorInfo++;
  if (buildCounterImportYumArtifactsErrorInfo < 3) {
    o.error = buildStatus();
    o.gcsSource = buildImportYumArtifactsGcsSource();
  }
  buildCounterImportYumArtifactsErrorInfo--;
  return o;
}

void checkImportYumArtifactsErrorInfo(api.ImportYumArtifactsErrorInfo o) {
  buildCounterImportYumArtifactsErrorInfo++;
  if (buildCounterImportYumArtifactsErrorInfo < 3) {
    checkStatus(o.error!);
    checkImportYumArtifactsGcsSource(o.gcsSource!);
  }
  buildCounterImportYumArtifactsErrorInfo--;
}

core.List<core.String> buildUnnamed5065() => [
      'foo',
      'foo',
    ];

void checkUnnamed5065(core.List<core.String> o) {
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
    o.uris = buildUnnamed5065();
    o.useWildcards = true;
  }
  buildCounterImportYumArtifactsGcsSource--;
  return o;
}

void checkImportYumArtifactsGcsSource(api.ImportYumArtifactsGcsSource o) {
  buildCounterImportYumArtifactsGcsSource++;
  if (buildCounterImportYumArtifactsGcsSource < 3) {
    checkUnnamed5065(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportYumArtifactsGcsSource--;
}

core.List<api.ImportYumArtifactsErrorInfo> buildUnnamed5066() => [
      buildImportYumArtifactsErrorInfo(),
      buildImportYumArtifactsErrorInfo(),
    ];

void checkUnnamed5066(core.List<api.ImportYumArtifactsErrorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportYumArtifactsErrorInfo(o[0]);
  checkImportYumArtifactsErrorInfo(o[1]);
}

core.List<api.YumArtifact> buildUnnamed5067() => [
      buildYumArtifact(),
      buildYumArtifact(),
    ];

void checkUnnamed5067(core.List<api.YumArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYumArtifact(o[0]);
  checkYumArtifact(o[1]);
}

core.int buildCounterImportYumArtifactsResponse = 0;
api.ImportYumArtifactsResponse buildImportYumArtifactsResponse() {
  final o = api.ImportYumArtifactsResponse();
  buildCounterImportYumArtifactsResponse++;
  if (buildCounterImportYumArtifactsResponse < 3) {
    o.errors = buildUnnamed5066();
    o.yumArtifacts = buildUnnamed5067();
  }
  buildCounterImportYumArtifactsResponse--;
  return o;
}

void checkImportYumArtifactsResponse(api.ImportYumArtifactsResponse o) {
  buildCounterImportYumArtifactsResponse++;
  if (buildCounterImportYumArtifactsResponse < 3) {
    checkUnnamed5066(o.errors!);
    checkUnnamed5067(o.yumArtifacts!);
  }
  buildCounterImportYumArtifactsResponse--;
}

core.List<api.DockerImage> buildUnnamed5068() => [
      buildDockerImage(),
      buildDockerImage(),
    ];

void checkUnnamed5068(core.List<api.DockerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDockerImage(o[0]);
  checkDockerImage(o[1]);
}

core.int buildCounterListDockerImagesResponse = 0;
api.ListDockerImagesResponse buildListDockerImagesResponse() {
  final o = api.ListDockerImagesResponse();
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    o.dockerImages = buildUnnamed5068();
    o.nextPageToken = 'foo';
  }
  buildCounterListDockerImagesResponse--;
  return o;
}

void checkListDockerImagesResponse(api.ListDockerImagesResponse o) {
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    checkUnnamed5068(o.dockerImages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDockerImagesResponse--;
}

core.List<api.Operation> buildUnnamed5069() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed5069(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed5069();
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
    checkUnnamed5069(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Repository> buildUnnamed5070() => [
      buildRepository(),
      buildRepository(),
    ];

void checkUnnamed5070(core.List<api.Repository> o) {
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
    o.repositories = buildUnnamed5070();
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
    checkUnnamed5070(o.repositories!);
  }
  buildCounterListRepositoriesResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5071() => {
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

void checkUnnamed5071(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5072() => {
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

void checkUnnamed5072(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed5071();
    o.name = 'foo';
    o.response = buildUnnamed5072();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed5071(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5072(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed5073() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5073(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed5073();
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
    checkUnnamed5073(o.labels!);
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

core.Map<core.String, core.Object> buildUnnamed5074() => {
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

void checkUnnamed5074(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5075() => [
      buildUnnamed5074(),
      buildUnnamed5074(),
    ];

void checkUnnamed5075(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5074(o[0]);
  checkUnnamed5074(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5075();
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
    checkUnnamed5075(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
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

core.List<api.AptArtifact> buildUnnamed5076() => [
      buildAptArtifact(),
      buildAptArtifact(),
    ];

void checkUnnamed5076(core.List<api.AptArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAptArtifact(o[0]);
  checkAptArtifact(o[1]);
}

core.int buildCounterUploadAptArtifactResponse = 0;
api.UploadAptArtifactResponse buildUploadAptArtifactResponse() {
  final o = api.UploadAptArtifactResponse();
  buildCounterUploadAptArtifactResponse++;
  if (buildCounterUploadAptArtifactResponse < 3) {
    o.aptArtifacts = buildUnnamed5076();
  }
  buildCounterUploadAptArtifactResponse--;
  return o;
}

void checkUploadAptArtifactResponse(api.UploadAptArtifactResponse o) {
  buildCounterUploadAptArtifactResponse++;
  if (buildCounterUploadAptArtifactResponse < 3) {
    checkUnnamed5076(o.aptArtifacts!);
  }
  buildCounterUploadAptArtifactResponse--;
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

core.List<api.YumArtifact> buildUnnamed5077() => [
      buildYumArtifact(),
      buildYumArtifact(),
    ];

void checkUnnamed5077(core.List<api.YumArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYumArtifact(o[0]);
  checkYumArtifact(o[1]);
}

core.int buildCounterUploadYumArtifactResponse = 0;
api.UploadYumArtifactResponse buildUploadYumArtifactResponse() {
  final o = api.UploadYumArtifactResponse();
  buildCounterUploadYumArtifactResponse++;
  if (buildCounterUploadYumArtifactResponse < 3) {
    o.yumArtifacts = buildUnnamed5077();
  }
  buildCounterUploadYumArtifactResponse--;
  return o;
}

void checkUploadYumArtifactResponse(api.UploadYumArtifactResponse o) {
  buildCounterUploadYumArtifactResponse++;
  if (buildCounterUploadYumArtifactResponse < 3) {
    checkUnnamed5077(o.yumArtifacts!);
  }
  buildCounterUploadYumArtifactResponse--;
}

core.int buildCounterYumArtifact = 0;
api.YumArtifact buildYumArtifact() {
  final o = api.YumArtifact();
  buildCounterYumArtifact++;
  if (buildCounterYumArtifact < 3) {
    o.architecture = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
    o.packageType = 'foo';
  }
  buildCounterYumArtifact--;
  return o;
}

void checkYumArtifact(api.YumArtifact o) {
  buildCounterYumArtifact++;
  if (buildCounterYumArtifact < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterYumArtifact--;
}

void main() {
  unittest.group('obj-schema-AptArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAptArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AptArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAptArtifact(od);
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

  unittest.group('obj-schema-ImportAptArtifactsErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAptArtifactsErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAptArtifactsErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsErrorInfo(od);
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

  unittest.group('obj-schema-ImportAptArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAptArtifactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAptArtifactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsResponse(od);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportYumArtifactsErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportYumArtifactsErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsErrorInfo(od);
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

  unittest.group('obj-schema-ImportYumArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportYumArtifactsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportYumArtifactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
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

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
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

  unittest.group('obj-schema-UploadAptArtifactResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadAptArtifactResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadAptArtifactResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAptArtifactResponse(od);
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

  unittest.group('obj-schema-UploadYumArtifactResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadYumArtifactResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadYumArtifactResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadYumArtifactResponse(od);
    });
  });

  unittest.group('obj-schema-YumArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYumArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YumArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYumArtifact(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).operations;
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
      final res = api.ArtifactRegistryApi(mock).operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ArtifactRegistryApi(mock).operations;
      final arg_name = 'foo';
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

  unittest.group('resource-ProjectsLocationsRepositoriesResource', () {
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
  });

  unittest.group('resource-ProjectsLocationsRepositoriesDockerImagesResource',
      () {
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
}
