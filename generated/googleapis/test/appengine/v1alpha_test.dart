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

import 'package:googleapis/appengine/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthorizedCertificate = 0;
api.AuthorizedCertificate buildAuthorizedCertificate() {
  final o = api.AuthorizedCertificate();
  buildCounterAuthorizedCertificate++;
  if (buildCounterAuthorizedCertificate < 3) {
    o.certificateRawData = buildCertificateRawData();
    o.displayName = 'foo';
    o.domainMappingsCount = 42;
    o.domainNames = buildUnnamed0();
    o.expireTime = 'foo';
    o.id = 'foo';
    o.managedCertificate = buildManagedCertificate();
    o.name = 'foo';
    o.visibleDomainMappings = buildUnnamed1();
  }
  buildCounterAuthorizedCertificate--;
  return o;
}

void checkAuthorizedCertificate(api.AuthorizedCertificate o) {
  buildCounterAuthorizedCertificate++;
  if (buildCounterAuthorizedCertificate < 3) {
    checkCertificateRawData(o.certificateRawData!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.domainMappingsCount!, unittest.equals(42));
    checkUnnamed0(o.domainNames!);
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkManagedCertificate(o.managedCertificate!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed1(o.visibleDomainMappings!);
  }
  buildCounterAuthorizedCertificate--;
}

core.int buildCounterAuthorizedDomain = 0;
api.AuthorizedDomain buildAuthorizedDomain() {
  final o = api.AuthorizedDomain();
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAuthorizedDomain--;
  return o;
}

void checkAuthorizedDomain(api.AuthorizedDomain o) {
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAuthorizedDomain--;
}

core.int buildCounterCertificateRawData = 0;
api.CertificateRawData buildCertificateRawData() {
  final o = api.CertificateRawData();
  buildCounterCertificateRawData++;
  if (buildCounterCertificateRawData < 3) {
    o.privateKey = 'foo';
    o.publicCertificate = 'foo';
  }
  buildCounterCertificateRawData--;
  return o;
}

void checkCertificateRawData(api.CertificateRawData o) {
  buildCounterCertificateRawData++;
  if (buildCounterCertificateRawData < 3) {
    unittest.expect(o.privateKey!, unittest.equals('foo'));
    unittest.expect(o.publicCertificate!, unittest.equals('foo'));
  }
  buildCounterCertificateRawData--;
}

core.List<api.ResourceRecord> buildUnnamed2() => [
  buildResourceRecord(),
  buildResourceRecord(),
];

void checkUnnamed2(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0]);
  checkResourceRecord(o[1]);
}

core.int buildCounterDomainMapping = 0;
api.DomainMapping buildDomainMapping() {
  final o = api.DomainMapping();
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.resourceRecords = buildUnnamed2();
    o.sslSettings = buildSslSettings();
  }
  buildCounterDomainMapping--;
  return o;
}

void checkDomainMapping(api.DomainMapping o) {
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.resourceRecords!);
    checkSslSettings(o.sslSettings!);
  }
  buildCounterDomainMapping--;
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

core.List<api.AuthorizedCertificate> buildUnnamed3() => [
  buildAuthorizedCertificate(),
  buildAuthorizedCertificate(),
];

void checkUnnamed3(core.List<api.AuthorizedCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedCertificate(o[0]);
  checkAuthorizedCertificate(o[1]);
}

core.int buildCounterListAuthorizedCertificatesResponse = 0;
api.ListAuthorizedCertificatesResponse
buildListAuthorizedCertificatesResponse() {
  final o = api.ListAuthorizedCertificatesResponse();
  buildCounterListAuthorizedCertificatesResponse++;
  if (buildCounterListAuthorizedCertificatesResponse < 3) {
    o.certificates = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedCertificatesResponse--;
  return o;
}

void checkListAuthorizedCertificatesResponse(
  api.ListAuthorizedCertificatesResponse o,
) {
  buildCounterListAuthorizedCertificatesResponse++;
  if (buildCounterListAuthorizedCertificatesResponse < 3) {
    checkUnnamed3(o.certificates!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuthorizedCertificatesResponse--;
}

core.List<api.AuthorizedDomain> buildUnnamed4() => [
  buildAuthorizedDomain(),
  buildAuthorizedDomain(),
];

void checkUnnamed4(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0]);
  checkAuthorizedDomain(o[1]);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
api.ListAuthorizedDomainsResponse buildListAuthorizedDomainsResponse() {
  final o = api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

void checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed4(o.domains!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAuthorizedDomainsResponse--;
}

core.List<api.DomainMapping> buildUnnamed5() => [
  buildDomainMapping(),
  buildDomainMapping(),
];

void checkUnnamed5(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0]);
  checkDomainMapping(o[1]);
}

core.int buildCounterListDomainMappingsResponse = 0;
api.ListDomainMappingsResponse buildListDomainMappingsResponse() {
  final o = api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.domainMappings = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListDomainMappingsResponse--;
  return o;
}

void checkListDomainMappingsResponse(api.ListDomainMappingsResponse o) {
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    checkUnnamed5(o.domainMappings!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDomainMappingsResponse--;
}

core.List<api.Location> buildUnnamed6() => [buildLocation(), buildLocation()];

void checkUnnamed6(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed7(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed8();
    o.locationId = 'foo';
    o.metadata = buildUnnamed9();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed8(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed9(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterManagedCertificate = 0;
api.ManagedCertificate buildManagedCertificate() {
  final o = api.ManagedCertificate();
  buildCounterManagedCertificate++;
  if (buildCounterManagedCertificate < 3) {
    o.lastRenewalTime = 'foo';
    o.status = 'foo';
  }
  buildCounterManagedCertificate--;
  return o;
}

void checkManagedCertificate(api.ManagedCertificate o) {
  buildCounterManagedCertificate++;
  if (buildCounterManagedCertificate < 3) {
    unittest.expect(o.lastRenewalTime!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterManagedCertificate--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed10();
    o.name = 'foo';
    o.response = buildUnnamed11();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed10(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed11(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterResourceRecord = 0;
api.ResourceRecord buildResourceRecord() {
  final o = api.ResourceRecord();
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    o.name = 'foo';
    o.rrdata = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceRecord--;
  return o;
}

void checkResourceRecord(api.ResourceRecord o) {
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rrdata!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResourceRecord--;
}

core.int buildCounterSslSettings = 0;
api.SslSettings buildSslSettings() {
  final o = api.SslSettings();
  buildCounterSslSettings++;
  if (buildCounterSslSettings < 3) {
    o.certificateId = 'foo';
    o.isManagedCertificate = true;
  }
  buildCounterSslSettings--;
  return o;
}

void checkSslSettings(api.SslSettings o) {
  buildCounterSslSettings++;
  if (buildCounterSslSettings < 3) {
    unittest.expect(o.certificateId!, unittest.equals('foo'));
    unittest.expect(o.isManagedCertificate!, unittest.isTrue);
  }
  buildCounterSslSettings--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed13() => [
  buildUnnamed12(),
  buildUnnamed12(),
];

void checkUnnamed13(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed12(o[0]);
  checkUnnamed12(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed13();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed13(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuthorizedCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedCertificate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedCertificate(od);
    });
  });

  unittest.group('obj-schema-AuthorizedDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizedDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizedDomain.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthorizedDomain(od);
    });
  });

  unittest.group('obj-schema-CertificateRawData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateRawData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateRawData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertificateRawData(od);
    });
  });

  unittest.group('obj-schema-DomainMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomainMapping(od);
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

  unittest.group('obj-schema-ListAuthorizedCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizedCertificatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizedCertificatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizedCertificatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAuthorizedDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAuthorizedDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAuthorizedDomainsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAuthorizedDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDomainMappingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainMappingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainMappingsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDomainMappingsResponse(od);
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

  unittest.group('obj-schema-ManagedCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedCertificate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedCertificate(od);
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

  unittest.group('obj-schema-ResourceRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecord.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceRecord(od);
    });
  });

  unittest.group('obj-schema-SslSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSslSettings(od);
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

  unittest.group('resource-AppsAuthorizedCertificatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedCertificates;
      final arg_request = buildAuthorizedCertificate();
      final arg_appsId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedCertificate(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedCertificates', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/authorizedCertificates'),
          );
          pathOffset += 23;

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
          final resp = convert.json.encode(buildAuthorizedCertificate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_appsId,
        $fields: arg_$fields,
      );
      checkAuthorizedCertificate(response as api.AuthorizedCertificate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedCertificates;
      final arg_appsId = 'foo';
      final arg_authorizedCertificatesId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedCertificates/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('/authorizedCertificates/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(
            subPart,
            unittest.equals('$arg_authorizedCertificatesId'),
          );

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
      final response = await res.delete(
        arg_appsId,
        arg_authorizedCertificatesId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedCertificates;
      final arg_appsId = 'foo';
      final arg_authorizedCertificatesId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedCertificates/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('/authorizedCertificates/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(
            subPart,
            unittest.equals('$arg_authorizedCertificatesId'),
          );

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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthorizedCertificate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_appsId,
        arg_authorizedCertificatesId,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkAuthorizedCertificate(response as api.AuthorizedCertificate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedCertificates;
      final arg_appsId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedCertificates', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/authorizedCertificates'),
          );
          pathOffset += 23;

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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAuthorizedCertificatesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_appsId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListAuthorizedCertificatesResponse(
        response as api.ListAuthorizedCertificatesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedCertificates;
      final arg_request = buildAuthorizedCertificate();
      final arg_appsId = 'foo';
      final arg_authorizedCertificatesId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AuthorizedCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAuthorizedCertificate(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedCertificates/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('/authorizedCertificates/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(
            subPart,
            unittest.equals('$arg_authorizedCertificatesId'),
          );

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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAuthorizedCertificate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_appsId,
        arg_authorizedCertificatesId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAuthorizedCertificate(response as api.AuthorizedCertificate);
    });
  });

  unittest.group('resource-AppsAuthorizedDomainsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.authorizedDomains;
      final arg_appsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/authorizedDomains', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('/authorizedDomains'),
          );
          pathOffset += 18;

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
            buildListAuthorizedDomainsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_appsId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAuthorizedDomainsResponse(
        response as api.ListAuthorizedDomainsResponse,
      );
    });
  });

  unittest.group('resource-AppsDomainMappingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.domainMappings;
      final arg_request = buildDomainMapping();
      final arg_appsId = 'foo';
      final arg_noManagedCertificate = true;
      final arg_overrideStrategy = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDomainMapping(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/domainMappings', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/domainMappings'),
          );
          pathOffset += 15;

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
            queryMap['noManagedCertificate']!.first,
            unittest.equals('$arg_noManagedCertificate'),
          );
          unittest.expect(
            queryMap['overrideStrategy']!.first,
            unittest.equals(arg_overrideStrategy),
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
        arg_appsId,
        noManagedCertificate: arg_noManagedCertificate,
        overrideStrategy: arg_overrideStrategy,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.domainMappings;
      final arg_appsId = 'foo';
      final arg_domainMappingsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/domainMappings/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('/domainMappings/'),
          );
          pathOffset += 16;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_domainMappingsId'));

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
      final response = await res.delete(
        arg_appsId,
        arg_domainMappingsId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.domainMappings;
      final arg_appsId = 'foo';
      final arg_domainMappingsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/domainMappings/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('/domainMappings/'),
          );
          pathOffset += 16;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_domainMappingsId'));

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
          final resp = convert.json.encode(buildDomainMapping());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_appsId,
        arg_domainMappingsId,
        $fields: arg_$fields,
      );
      checkDomainMapping(response as api.DomainMapping);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.domainMappings;
      final arg_appsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/domainMappings', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('/domainMappings'),
          );
          pathOffset += 15;

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
          final resp = convert.json.encode(buildListDomainMappingsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_appsId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDomainMappingsResponse(
        response as api.ListDomainMappingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.domainMappings;
      final arg_request = buildDomainMapping();
      final arg_appsId = 'foo';
      final arg_domainMappingsId = 'foo';
      final arg_noManagedCertificate = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DomainMapping.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDomainMapping(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/domainMappings/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('/domainMappings/'),
          );
          pathOffset += 16;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_domainMappingsId'));

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
            queryMap['noManagedCertificate']!.first,
            unittest.equals('$arg_noManagedCertificate'),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
        arg_appsId,
        arg_domainMappingsId,
        noManagedCertificate: arg_noManagedCertificate,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-AppsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.locations;
      final arg_appsId = 'foo';
      final arg_locationsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/locations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/locations/'),
          );
          pathOffset += 11;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_locationsId'));

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
      final response = await res.get(
        arg_appsId,
        arg_locationsId,
        $fields: arg_$fields,
      );
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.locations;
      final arg_appsId = 'foo';
      final arg_extraLocationTypes = buildUnnamed14();
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/locations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/locations'),
          );
          pathOffset += 10;

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
        arg_appsId,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-AppsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.operations;
      final arg_appsId = 'foo';
      final arg_operationsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/operations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('/operations/'),
          );
          pathOffset += 12;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_operationsId'));

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
      final response = await res.get(
        arg_appsId,
        arg_operationsId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).apps.operations;
      final arg_appsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1alpha/apps/'),
          );
          pathOffset += 13;
          index = path.indexOf('/operations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_appsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/operations'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_appsId,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).projects.locations;
      final arg_projectsId = 'foo';
      final arg_locationsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1alpha/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf('/locations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/locations/'),
          );
          pathOffset += 11;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_locationsId'));

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
      final response = await res.get(
        arg_projectsId,
        arg_locationsId,
        $fields: arg_$fields,
      );
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).projects.locations;
      final arg_projectsId = 'foo';
      final arg_extraLocationTypes = buildUnnamed15();
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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1alpha/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf('/locations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/locations'),
          );
          pathOffset += 10;

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
        arg_projectsId,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsApplicationsAuthorizedCertificatesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedCertificates;
        final arg_request = buildAuthorizedCertificate();
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AuthorizedCertificate.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAuthorizedCertificate(obj);

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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedCertificates', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 23),
              unittest.equals('/authorizedCertificates'),
            );
            pathOffset += 23;

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
            final resp = convert.json.encode(buildAuthorizedCertificate());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          $fields: arg_$fields,
        );
        checkAuthorizedCertificate(response as api.AuthorizedCertificate);
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedCertificates;
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_authorizedCertificatesId = 'foo';
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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedCertificates/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 24),
              unittest.equals('/authorizedCertificates/'),
            );
            pathOffset += 24;
            subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
            pathOffset = path.length;
            unittest.expect(
              subPart,
              unittest.equals('$arg_authorizedCertificatesId'),
            );

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
        final response = await res.delete(
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          arg_authorizedCertificatesId,
          $fields: arg_$fields,
        );
        checkEmpty(response as api.Empty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedCertificates;
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_authorizedCertificatesId = 'foo';
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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedCertificates/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 24),
              unittest.equals('/authorizedCertificates/'),
            );
            pathOffset += 24;
            subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
            pathOffset = path.length;
            unittest.expect(
              subPart,
              unittest.equals('$arg_authorizedCertificatesId'),
            );

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
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildAuthorizedCertificate());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          arg_authorizedCertificatesId,
          view: arg_view,
          $fields: arg_$fields,
        );
        checkAuthorizedCertificate(response as api.AuthorizedCertificate);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedCertificates;
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedCertificates', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 23),
              unittest.equals('/authorizedCertificates'),
            );
            pathOffset += 23;

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
            unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListAuthorizedCertificatesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields,
        );
        checkListAuthorizedCertificatesResponse(
          response as api.ListAuthorizedCertificatesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedCertificates;
        final arg_request = buildAuthorizedCertificate();
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_authorizedCertificatesId = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.AuthorizedCertificate.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkAuthorizedCertificate(obj);

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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedCertificates/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 24),
              unittest.equals('/authorizedCertificates/'),
            );
            pathOffset += 24;
            subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
            pathOffset = path.length;
            unittest.expect(
              subPart,
              unittest.equals('$arg_authorizedCertificatesId'),
            );

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
              queryMap['updateMask']!.first,
              unittest.equals(arg_updateMask),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildAuthorizedCertificate());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.patch(
          arg_request,
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          arg_authorizedCertificatesId,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkAuthorizedCertificate(response as api.AuthorizedCertificate);
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsApplicationsAuthorizedDomainsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.authorizedDomains;
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/authorizedDomains', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 18),
              unittest.equals('/authorizedDomains'),
            );
            pathOffset += 18;

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
              buildListAuthorizedDomainsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListAuthorizedDomainsResponse(
          response as api.ListAuthorizedDomainsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsApplicationsDomainMappingsResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.domainMappings;
        final arg_request = buildDomainMapping();
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_noManagedCertificate = true;
        final arg_overrideStrategy = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.DomainMapping.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkDomainMapping(obj);

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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/domainMappings', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 15),
              unittest.equals('/domainMappings'),
            );
            pathOffset += 15;

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
              queryMap['noManagedCertificate']!.first,
              unittest.equals('$arg_noManagedCertificate'),
            );
            unittest.expect(
              queryMap['overrideStrategy']!.first,
              unittest.equals(arg_overrideStrategy),
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
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          noManagedCertificate: arg_noManagedCertificate,
          overrideStrategy: arg_overrideStrategy,
          $fields: arg_$fields,
        );
        checkOperation(response as api.Operation);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.AppengineApi(
              mock,
            ).projects.locations.applications.domainMappings;
        final arg_projectsId = 'foo';
        final arg_locationsId = 'foo';
        final arg_applicationsId = 'foo';
        final arg_domainMappingsId = 'foo';
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
              path.substring(pathOffset, pathOffset + 17),
              unittest.equals('v1alpha/projects/'),
            );
            pathOffset += 17;
            index = path.indexOf('/locations/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_projectsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 11),
              unittest.equals('/locations/'),
            );
            pathOffset += 11;
            index = path.indexOf('/applications/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_locationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 14),
              unittest.equals('/applications/'),
            );
            pathOffset += 14;
            index = path.indexOf('/domainMappings/', pathOffset);
            unittest.expect(index >= 0, unittest.isTrue);
            subPart = core.Uri.decodeQueryComponent(
              path.substring(pathOffset, index),
            );
            pathOffset = index;
            unittest.expect(subPart, unittest.equals('$arg_applicationsId'));
            unittest.expect(
              path.substring(pathOffset, pathOffset + 16),
              unittest.equals('/domainMappings/'),
            );
            pathOffset += 16;
            subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
            pathOffset = path.length;
            unittest.expect(subPart, unittest.equals('$arg_domainMappingsId'));

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
            final resp = convert.json.encode(buildDomainMapping());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(
          arg_projectsId,
          arg_locationsId,
          arg_applicationsId,
          arg_domainMappingsId,
          $fields: arg_$fields,
        );
        checkDomainMapping(response as api.DomainMapping);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).projects.locations.operations;
      final arg_projectsId = 'foo';
      final arg_locationsId = 'foo';
      final arg_operationsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1alpha/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf('/locations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/locations/'),
          );
          pathOffset += 11;
          index = path.indexOf('/operations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_locationsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('/operations/'),
          );
          pathOffset += 12;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_operationsId'));

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
      final response = await res.get(
        arg_projectsId,
        arg_locationsId,
        arg_operationsId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AppengineApi(mock).projects.locations.operations;
      final arg_projectsId = 'foo';
      final arg_locationsId = 'foo';
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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1alpha/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf('/locations/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/locations/'),
          );
          pathOffset += 11;
          index = path.indexOf('/operations', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_locationsId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/operations'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_projectsId,
        arg_locationsId,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
