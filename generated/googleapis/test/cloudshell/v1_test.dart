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

import 'package:googleapis/cloudshell/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddPublicKeyMetadata = 0;
api.AddPublicKeyMetadata buildAddPublicKeyMetadata() {
  final o = api.AddPublicKeyMetadata();
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
  return o;
}

void checkAddPublicKeyMetadata(api.AddPublicKeyMetadata o) {
  buildCounterAddPublicKeyMetadata++;
  if (buildCounterAddPublicKeyMetadata < 3) {}
  buildCounterAddPublicKeyMetadata--;
}

core.int buildCounterAddPublicKeyRequest = 0;
api.AddPublicKeyRequest buildAddPublicKeyRequest() {
  final o = api.AddPublicKeyRequest();
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    o.key = 'foo';
  }
  buildCounterAddPublicKeyRequest--;
  return o;
}

void checkAddPublicKeyRequest(api.AddPublicKeyRequest o) {
  buildCounterAddPublicKeyRequest++;
  if (buildCounterAddPublicKeyRequest < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddPublicKeyRequest--;
}

core.int buildCounterAddPublicKeyResponse = 0;
api.AddPublicKeyResponse buildAddPublicKeyResponse() {
  final o = api.AddPublicKeyResponse();
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    o.key = 'foo';
  }
  buildCounterAddPublicKeyResponse--;
  return o;
}

void checkAddPublicKeyResponse(api.AddPublicKeyResponse o) {
  buildCounterAddPublicKeyResponse++;
  if (buildCounterAddPublicKeyResponse < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddPublicKeyResponse--;
}

core.int buildCounterAuthorizeEnvironmentMetadata = 0;
api.AuthorizeEnvironmentMetadata buildAuthorizeEnvironmentMetadata() {
  final o = api.AuthorizeEnvironmentMetadata();
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
  return o;
}

void checkAuthorizeEnvironmentMetadata(api.AuthorizeEnvironmentMetadata o) {
  buildCounterAuthorizeEnvironmentMetadata++;
  if (buildCounterAuthorizeEnvironmentMetadata < 3) {}
  buildCounterAuthorizeEnvironmentMetadata--;
}

core.int buildCounterAuthorizeEnvironmentRequest = 0;
api.AuthorizeEnvironmentRequest buildAuthorizeEnvironmentRequest() {
  final o = api.AuthorizeEnvironmentRequest();
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    o.accessToken = 'foo';
    o.expireTime = 'foo';
    o.idToken = 'foo';
  }
  buildCounterAuthorizeEnvironmentRequest--;
  return o;
}

void checkAuthorizeEnvironmentRequest(api.AuthorizeEnvironmentRequest o) {
  buildCounterAuthorizeEnvironmentRequest++;
  if (buildCounterAuthorizeEnvironmentRequest < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthorizeEnvironmentRequest--;
}

core.int buildCounterAuthorizeEnvironmentResponse = 0;
api.AuthorizeEnvironmentResponse buildAuthorizeEnvironmentResponse() {
  final o = api.AuthorizeEnvironmentResponse();
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
  return o;
}

void checkAuthorizeEnvironmentResponse(api.AuthorizeEnvironmentResponse o) {
  buildCounterAuthorizeEnvironmentResponse++;
  if (buildCounterAuthorizeEnvironmentResponse < 3) {}
  buildCounterAuthorizeEnvironmentResponse--;
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

core.int buildCounterCreateEnvironmentMetadata = 0;
api.CreateEnvironmentMetadata buildCreateEnvironmentMetadata() {
  final o = api.CreateEnvironmentMetadata();
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
  return o;
}

void checkCreateEnvironmentMetadata(api.CreateEnvironmentMetadata o) {
  buildCounterCreateEnvironmentMetadata++;
  if (buildCounterCreateEnvironmentMetadata < 3) {}
  buildCounterCreateEnvironmentMetadata--;
}

core.int buildCounterDeleteEnvironmentMetadata = 0;
api.DeleteEnvironmentMetadata buildDeleteEnvironmentMetadata() {
  final o = api.DeleteEnvironmentMetadata();
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
  return o;
}

void checkDeleteEnvironmentMetadata(api.DeleteEnvironmentMetadata o) {
  buildCounterDeleteEnvironmentMetadata++;
  if (buildCounterDeleteEnvironmentMetadata < 3) {}
  buildCounterDeleteEnvironmentMetadata--;
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

core.List<core.String> buildUnnamed2425() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2425(core.List<core.String> o) {
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

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.dockerImage = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.publicKeys = buildUnnamed2425();
    o.sshHost = 'foo';
    o.sshPort = 42;
    o.sshUsername = 'foo';
    o.state = 'foo';
    o.webHost = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(
      o.dockerImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2425(o.publicKeys!);
    unittest.expect(
      o.sshHost!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sshPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sshUsername!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webHost!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironment--;
}

core.List<api.Operation> buildUnnamed2426() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed2426(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2426();
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
    checkUnnamed2426(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2427() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2427(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2428() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2428(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2427();
    o.name = 'foo';
    o.response = buildUnnamed2428();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed2427(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2428(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterRemovePublicKeyMetadata = 0;
api.RemovePublicKeyMetadata buildRemovePublicKeyMetadata() {
  final o = api.RemovePublicKeyMetadata();
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
  return o;
}

void checkRemovePublicKeyMetadata(api.RemovePublicKeyMetadata o) {
  buildCounterRemovePublicKeyMetadata++;
  if (buildCounterRemovePublicKeyMetadata < 3) {}
  buildCounterRemovePublicKeyMetadata--;
}

core.int buildCounterRemovePublicKeyRequest = 0;
api.RemovePublicKeyRequest buildRemovePublicKeyRequest() {
  final o = api.RemovePublicKeyRequest();
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    o.key = 'foo';
  }
  buildCounterRemovePublicKeyRequest--;
  return o;
}

void checkRemovePublicKeyRequest(api.RemovePublicKeyRequest o) {
  buildCounterRemovePublicKeyRequest++;
  if (buildCounterRemovePublicKeyRequest < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemovePublicKeyRequest--;
}

core.int buildCounterRemovePublicKeyResponse = 0;
api.RemovePublicKeyResponse buildRemovePublicKeyResponse() {
  final o = api.RemovePublicKeyResponse();
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
  return o;
}

void checkRemovePublicKeyResponse(api.RemovePublicKeyResponse o) {
  buildCounterRemovePublicKeyResponse++;
  if (buildCounterRemovePublicKeyResponse < 3) {}
  buildCounterRemovePublicKeyResponse--;
}

core.int buildCounterStartEnvironmentMetadata = 0;
api.StartEnvironmentMetadata buildStartEnvironmentMetadata() {
  final o = api.StartEnvironmentMetadata();
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    o.state = 'foo';
  }
  buildCounterStartEnvironmentMetadata--;
  return o;
}

void checkStartEnvironmentMetadata(api.StartEnvironmentMetadata o) {
  buildCounterStartEnvironmentMetadata++;
  if (buildCounterStartEnvironmentMetadata < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartEnvironmentMetadata--;
}

core.List<core.String> buildUnnamed2429() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2429(core.List<core.String> o) {
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

core.int buildCounterStartEnvironmentRequest = 0;
api.StartEnvironmentRequest buildStartEnvironmentRequest() {
  final o = api.StartEnvironmentRequest();
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    o.accessToken = 'foo';
    o.publicKeys = buildUnnamed2429();
  }
  buildCounterStartEnvironmentRequest--;
  return o;
}

void checkStartEnvironmentRequest(api.StartEnvironmentRequest o) {
  buildCounterStartEnvironmentRequest++;
  if (buildCounterStartEnvironmentRequest < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2429(o.publicKeys!);
  }
  buildCounterStartEnvironmentRequest--;
}

core.int buildCounterStartEnvironmentResponse = 0;
api.StartEnvironmentResponse buildStartEnvironmentResponse() {
  final o = api.StartEnvironmentResponse();
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    o.environment = buildEnvironment();
  }
  buildCounterStartEnvironmentResponse--;
  return o;
}

void checkStartEnvironmentResponse(api.StartEnvironmentResponse o) {
  buildCounterStartEnvironmentResponse++;
  if (buildCounterStartEnvironmentResponse < 3) {
    checkEnvironment(o.environment!);
  }
  buildCounterStartEnvironmentResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2430() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed2430(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2431() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2430());
  o.add(buildUnnamed2430());
  return o;
}

void checkUnnamed2431(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2430(o[0]);
  checkUnnamed2430(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2431();
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
    checkUnnamed2431(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-AddPublicKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddPublicKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddPublicKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddPublicKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-AddPublicKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddPublicKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddPublicKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddPublicKeyRequest(od);
    });
  });

  unittest.group('obj-schema-AddPublicKeyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddPublicKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddPublicKeyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddPublicKeyResponse(od);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizeEnvironmentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizeEnvironmentMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizeEnvironmentMetadata(od);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizeEnvironmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizeEnvironmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizeEnvironmentRequest(od);
    });
  });

  unittest.group('obj-schema-AuthorizeEnvironmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizeEnvironmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizeEnvironmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizeEnvironmentResponse(od);
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

  unittest.group('obj-schema-CreateEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateEnvironmentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateEnvironmentMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateEnvironmentMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteEnvironmentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteEnvironmentMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteEnvironmentMetadata(od);
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

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
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

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePublicKeyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePublicKeyMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemovePublicKeyMetadata(od);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePublicKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePublicKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemovePublicKeyRequest(od);
    });
  });

  unittest.group('obj-schema-RemovePublicKeyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePublicKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePublicKeyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemovePublicKeyResponse(od);
    });
  });

  unittest.group('obj-schema-StartEnvironmentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartEnvironmentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartEnvironmentMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartEnvironmentMetadata(od);
    });
  });

  unittest.group('obj-schema-StartEnvironmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartEnvironmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartEnvironmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartEnvironmentRequest(od);
    });
  });

  unittest.group('obj-schema-StartEnvironmentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartEnvironmentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartEnvironmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartEnvironmentResponse(od);
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

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).operations;
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
      final res = api.CloudShellApi(mock).operations;
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
      final res = api.CloudShellApi(mock).operations;
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
      final res = api.CloudShellApi(mock).operations;
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

  unittest.group('resource-UsersEnvironmentsResource', () {
    unittest.test('method--addPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).users.environments;
      final arg_request = buildAddPublicKeyRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddPublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddPublicKeyRequest(obj);

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
      final response = await res.addPublicKey(arg_request, arg_environment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--authorize', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).users.environments;
      final arg_request = buildAuthorizeEnvironmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AuthorizeEnvironmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAuthorizeEnvironmentRequest(obj);

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
          await res.authorize(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).users.environments;
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--removePublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).users.environments;
      final arg_request = buildRemovePublicKeyRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemovePublicKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemovePublicKeyRequest(obj);

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
      final response = await res.removePublicKey(arg_request, arg_environment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.CloudShellApi(mock).users.environments;
      final arg_request = buildStartEnvironmentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartEnvironmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartEnvironmentRequest(obj);

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
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
