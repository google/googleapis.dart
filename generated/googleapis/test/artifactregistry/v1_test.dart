// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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
  var o = api.AptArtifact();
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
  var o = api.CancelOperationRequest();
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

core.List<core.String> buildUnnamed4998() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4998(core.List<core.String> o) {
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
  var o = api.DockerImage();
  buildCounterDockerImage++;
  if (buildCounterDockerImage < 3) {
    o.buildTime = 'foo';
    o.imageSizeBytes = 'foo';
    o.mediaType = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed4998();
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
    checkUnnamed4998(o.tags!);
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
  var o = api.Empty();
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
  var o = api.ImportAptArtifactsErrorInfo();
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
    checkStatus(o.error! as api.Status);
    checkImportAptArtifactsGcsSource(
        o.gcsSource! as api.ImportAptArtifactsGcsSource);
  }
  buildCounterImportAptArtifactsErrorInfo--;
}

core.List<core.String> buildUnnamed4999() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4999(core.List<core.String> o) {
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
  var o = api.ImportAptArtifactsGcsSource();
  buildCounterImportAptArtifactsGcsSource++;
  if (buildCounterImportAptArtifactsGcsSource < 3) {
    o.uris = buildUnnamed4999();
    o.useWildcards = true;
  }
  buildCounterImportAptArtifactsGcsSource--;
  return o;
}

void checkImportAptArtifactsGcsSource(api.ImportAptArtifactsGcsSource o) {
  buildCounterImportAptArtifactsGcsSource++;
  if (buildCounterImportAptArtifactsGcsSource < 3) {
    checkUnnamed4999(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportAptArtifactsGcsSource--;
}

core.List<api.AptArtifact> buildUnnamed5000() {
  var o = <api.AptArtifact>[];
  o.add(buildAptArtifact());
  o.add(buildAptArtifact());
  return o;
}

void checkUnnamed5000(core.List<api.AptArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAptArtifact(o[0] as api.AptArtifact);
  checkAptArtifact(o[1] as api.AptArtifact);
}

core.List<api.ImportAptArtifactsErrorInfo> buildUnnamed5001() {
  var o = <api.ImportAptArtifactsErrorInfo>[];
  o.add(buildImportAptArtifactsErrorInfo());
  o.add(buildImportAptArtifactsErrorInfo());
  return o;
}

void checkUnnamed5001(core.List<api.ImportAptArtifactsErrorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportAptArtifactsErrorInfo(o[0] as api.ImportAptArtifactsErrorInfo);
  checkImportAptArtifactsErrorInfo(o[1] as api.ImportAptArtifactsErrorInfo);
}

core.int buildCounterImportAptArtifactsResponse = 0;
api.ImportAptArtifactsResponse buildImportAptArtifactsResponse() {
  var o = api.ImportAptArtifactsResponse();
  buildCounterImportAptArtifactsResponse++;
  if (buildCounterImportAptArtifactsResponse < 3) {
    o.aptArtifacts = buildUnnamed5000();
    o.errors = buildUnnamed5001();
  }
  buildCounterImportAptArtifactsResponse--;
  return o;
}

void checkImportAptArtifactsResponse(api.ImportAptArtifactsResponse o) {
  buildCounterImportAptArtifactsResponse++;
  if (buildCounterImportAptArtifactsResponse < 3) {
    checkUnnamed5000(o.aptArtifacts!);
    checkUnnamed5001(o.errors!);
  }
  buildCounterImportAptArtifactsResponse--;
}

core.int buildCounterImportYumArtifactsErrorInfo = 0;
api.ImportYumArtifactsErrorInfo buildImportYumArtifactsErrorInfo() {
  var o = api.ImportYumArtifactsErrorInfo();
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
    checkStatus(o.error! as api.Status);
    checkImportYumArtifactsGcsSource(
        o.gcsSource! as api.ImportYumArtifactsGcsSource);
  }
  buildCounterImportYumArtifactsErrorInfo--;
}

core.List<core.String> buildUnnamed5002() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5002(core.List<core.String> o) {
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
  var o = api.ImportYumArtifactsGcsSource();
  buildCounterImportYumArtifactsGcsSource++;
  if (buildCounterImportYumArtifactsGcsSource < 3) {
    o.uris = buildUnnamed5002();
    o.useWildcards = true;
  }
  buildCounterImportYumArtifactsGcsSource--;
  return o;
}

void checkImportYumArtifactsGcsSource(api.ImportYumArtifactsGcsSource o) {
  buildCounterImportYumArtifactsGcsSource++;
  if (buildCounterImportYumArtifactsGcsSource < 3) {
    checkUnnamed5002(o.uris!);
    unittest.expect(o.useWildcards!, unittest.isTrue);
  }
  buildCounterImportYumArtifactsGcsSource--;
}

core.List<api.ImportYumArtifactsErrorInfo> buildUnnamed5003() {
  var o = <api.ImportYumArtifactsErrorInfo>[];
  o.add(buildImportYumArtifactsErrorInfo());
  o.add(buildImportYumArtifactsErrorInfo());
  return o;
}

void checkUnnamed5003(core.List<api.ImportYumArtifactsErrorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportYumArtifactsErrorInfo(o[0] as api.ImportYumArtifactsErrorInfo);
  checkImportYumArtifactsErrorInfo(o[1] as api.ImportYumArtifactsErrorInfo);
}

core.List<api.YumArtifact> buildUnnamed5004() {
  var o = <api.YumArtifact>[];
  o.add(buildYumArtifact());
  o.add(buildYumArtifact());
  return o;
}

void checkUnnamed5004(core.List<api.YumArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYumArtifact(o[0] as api.YumArtifact);
  checkYumArtifact(o[1] as api.YumArtifact);
}

core.int buildCounterImportYumArtifactsResponse = 0;
api.ImportYumArtifactsResponse buildImportYumArtifactsResponse() {
  var o = api.ImportYumArtifactsResponse();
  buildCounterImportYumArtifactsResponse++;
  if (buildCounterImportYumArtifactsResponse < 3) {
    o.errors = buildUnnamed5003();
    o.yumArtifacts = buildUnnamed5004();
  }
  buildCounterImportYumArtifactsResponse--;
  return o;
}

void checkImportYumArtifactsResponse(api.ImportYumArtifactsResponse o) {
  buildCounterImportYumArtifactsResponse++;
  if (buildCounterImportYumArtifactsResponse < 3) {
    checkUnnamed5003(o.errors!);
    checkUnnamed5004(o.yumArtifacts!);
  }
  buildCounterImportYumArtifactsResponse--;
}

core.List<api.DockerImage> buildUnnamed5005() {
  var o = <api.DockerImage>[];
  o.add(buildDockerImage());
  o.add(buildDockerImage());
  return o;
}

void checkUnnamed5005(core.List<api.DockerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDockerImage(o[0] as api.DockerImage);
  checkDockerImage(o[1] as api.DockerImage);
}

core.int buildCounterListDockerImagesResponse = 0;
api.ListDockerImagesResponse buildListDockerImagesResponse() {
  var o = api.ListDockerImagesResponse();
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    o.dockerImages = buildUnnamed5005();
    o.nextPageToken = 'foo';
  }
  buildCounterListDockerImagesResponse--;
  return o;
}

void checkListDockerImagesResponse(api.ListDockerImagesResponse o) {
  buildCounterListDockerImagesResponse++;
  if (buildCounterListDockerImagesResponse < 3) {
    checkUnnamed5005(o.dockerImages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDockerImagesResponse--;
}

core.List<api.Operation> buildUnnamed5006() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed5006(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5006();
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
    checkUnnamed5006(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Repository> buildUnnamed5007() {
  var o = <api.Repository>[];
  o.add(buildRepository());
  o.add(buildRepository());
  return o;
}

void checkUnnamed5007(core.List<api.Repository> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRepository(o[0] as api.Repository);
  checkRepository(o[1] as api.Repository);
}

core.int buildCounterListRepositoriesResponse = 0;
api.ListRepositoriesResponse buildListRepositoriesResponse() {
  var o = api.ListRepositoriesResponse();
  buildCounterListRepositoriesResponse++;
  if (buildCounterListRepositoriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.repositories = buildUnnamed5007();
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
    checkUnnamed5007(o.repositories!);
  }
  buildCounterListRepositoriesResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5008() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5008(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5009() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5009(core.Map<core.String, core.Object> o) {
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
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5008();
    o.name = 'foo';
    o.response = buildUnnamed5009();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed5008(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5009(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed5010() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5010(core.Map<core.String, core.String> o) {
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
  var o = api.Repository();
  buildCounterRepository++;
  if (buildCounterRepository < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.format = 'foo';
    o.kmsKeyName = 'foo';
    o.labels = buildUnnamed5010();
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
    checkUnnamed5010(o.labels!);
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

core.Map<core.String, core.Object> buildUnnamed5011() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5011(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5012() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5011());
  o.add(buildUnnamed5011());
  return o;
}

void checkUnnamed5012(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5011(o[0]);
  checkUnnamed5011(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5012();
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
    checkUnnamed5012(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUploadAptArtifactMediaResponse = 0;
api.UploadAptArtifactMediaResponse buildUploadAptArtifactMediaResponse() {
  var o = api.UploadAptArtifactMediaResponse();
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
    checkOperation(o.operation! as api.Operation);
  }
  buildCounterUploadAptArtifactMediaResponse--;
}

core.List<api.AptArtifact> buildUnnamed5013() {
  var o = <api.AptArtifact>[];
  o.add(buildAptArtifact());
  o.add(buildAptArtifact());
  return o;
}

void checkUnnamed5013(core.List<api.AptArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAptArtifact(o[0] as api.AptArtifact);
  checkAptArtifact(o[1] as api.AptArtifact);
}

core.int buildCounterUploadAptArtifactResponse = 0;
api.UploadAptArtifactResponse buildUploadAptArtifactResponse() {
  var o = api.UploadAptArtifactResponse();
  buildCounterUploadAptArtifactResponse++;
  if (buildCounterUploadAptArtifactResponse < 3) {
    o.aptArtifacts = buildUnnamed5013();
  }
  buildCounterUploadAptArtifactResponse--;
  return o;
}

void checkUploadAptArtifactResponse(api.UploadAptArtifactResponse o) {
  buildCounterUploadAptArtifactResponse++;
  if (buildCounterUploadAptArtifactResponse < 3) {
    checkUnnamed5013(o.aptArtifacts!);
  }
  buildCounterUploadAptArtifactResponse--;
}

core.int buildCounterUploadYumArtifactMediaResponse = 0;
api.UploadYumArtifactMediaResponse buildUploadYumArtifactMediaResponse() {
  var o = api.UploadYumArtifactMediaResponse();
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
    checkOperation(o.operation! as api.Operation);
  }
  buildCounterUploadYumArtifactMediaResponse--;
}

core.List<api.YumArtifact> buildUnnamed5014() {
  var o = <api.YumArtifact>[];
  o.add(buildYumArtifact());
  o.add(buildYumArtifact());
  return o;
}

void checkUnnamed5014(core.List<api.YumArtifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYumArtifact(o[0] as api.YumArtifact);
  checkYumArtifact(o[1] as api.YumArtifact);
}

core.int buildCounterUploadYumArtifactResponse = 0;
api.UploadYumArtifactResponse buildUploadYumArtifactResponse() {
  var o = api.UploadYumArtifactResponse();
  buildCounterUploadYumArtifactResponse++;
  if (buildCounterUploadYumArtifactResponse < 3) {
    o.yumArtifacts = buildUnnamed5014();
  }
  buildCounterUploadYumArtifactResponse--;
  return o;
}

void checkUploadYumArtifactResponse(api.UploadYumArtifactResponse o) {
  buildCounterUploadYumArtifactResponse++;
  if (buildCounterUploadYumArtifactResponse < 3) {
    checkUnnamed5014(o.yumArtifacts!);
  }
  buildCounterUploadYumArtifactResponse--;
}

core.int buildCounterYumArtifact = 0;
api.YumArtifact buildYumArtifact() {
  var o = api.YumArtifact();
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
      var o = buildAptArtifact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AptArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAptArtifact(od as api.AptArtifact);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-DockerImage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDockerImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DockerImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDockerImage(od as api.DockerImage);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-ImportAptArtifactsErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportAptArtifactsErrorInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportAptArtifactsErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsErrorInfo(od as api.ImportAptArtifactsErrorInfo);
    });
  });

  unittest.group('obj-schema-ImportAptArtifactsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportAptArtifactsGcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportAptArtifactsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsGcsSource(od as api.ImportAptArtifactsGcsSource);
    });
  });

  unittest.group('obj-schema-ImportAptArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportAptArtifactsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportAptArtifactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAptArtifactsResponse(od as api.ImportAptArtifactsResponse);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportYumArtifactsErrorInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportYumArtifactsErrorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsErrorInfo(od as api.ImportYumArtifactsErrorInfo);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportYumArtifactsGcsSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportYumArtifactsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsGcsSource(od as api.ImportYumArtifactsGcsSource);
    });
  });

  unittest.group('obj-schema-ImportYumArtifactsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImportYumArtifactsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImportYumArtifactsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportYumArtifactsResponse(od as api.ImportYumArtifactsResponse);
    });
  });

  unittest.group('obj-schema-ListDockerImagesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListDockerImagesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListDockerImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDockerImagesResponse(od as api.ListDockerImagesResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListRepositoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListRepositoriesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListRepositoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRepositoriesResponse(od as api.ListRepositoriesResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Repository', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRepository();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Repository.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepository(od as api.Repository);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-UploadAptArtifactMediaResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUploadAptArtifactMediaResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UploadAptArtifactMediaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAptArtifactMediaResponse(
          od as api.UploadAptArtifactMediaResponse);
    });
  });

  unittest.group('obj-schema-UploadAptArtifactResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUploadAptArtifactResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UploadAptArtifactResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadAptArtifactResponse(od as api.UploadAptArtifactResponse);
    });
  });

  unittest.group('obj-schema-UploadYumArtifactMediaResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUploadYumArtifactMediaResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UploadYumArtifactMediaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadYumArtifactMediaResponse(
          od as api.UploadYumArtifactMediaResponse);
    });
  });

  unittest.group('obj-schema-UploadYumArtifactResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUploadYumArtifactResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UploadYumArtifactResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadYumArtifactResponse(od as api.UploadYumArtifactResponse);
    });
  });

  unittest.group('obj-schema-YumArtifact', () {
    unittest.test('to-json--from-json', () async {
      var o = buildYumArtifact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.YumArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYumArtifact(od as api.YumArtifact);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).operations;
      var arg_filter = 'foo';
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("v1/operations"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["name"]!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRepositoriesResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRepository());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRepository(response as api.Repository);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock).projects.locations.repositories;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRepositoriesResponse());
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
      var mock = HttpServerMock();
      var res = api.ArtifactRegistryApi(mock)
          .projects
          .locations
          .repositories
          .dockerImages;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDockerImagesResponse());
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
